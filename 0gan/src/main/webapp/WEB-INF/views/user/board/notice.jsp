<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    <link href="../resources/css/user-board.css" rel="stylesheet" type="text/css">
<script type="text/javascript">


</script>
</head>
<body>
<h2>공지사항</h2>
<hr>
<form action="notice.do" method="post">
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</form>

<hr>
    <table>
        <tbody>
        <c:forEach var="list" items="${list }">
            <tr class="tr-question">
                <td>
                    <button class="question" id="que-${list.noti_num }"><span>${list.noti_title }</span></button>
                </td>
                <td>        <button class="question" id="que-${list.noti_num }"><div align="right"><span id="que-${list.noti_num }-toggle"><i class="fas fa-angle-down"></i></span></div></button>
                </td>
                
            </tr>
            <tr class="tr-answer">
                <td>
                    <div class="answer" id="ans-${list.noti_num }">${list.noti_content }
                    	<c:if test="${not empty list.noti_file }"><div>첨부파일 : ${list.noti_file }</div></c:if>
                    </div>
                    
                </td>
            </tr>
           </c:forEach>
  </tbody>
</table>
<hr>
<c:forEach var="i" begin="1" end="${totalPage }">
		<a href="notice.do?page=${i }">${i }</a>
	</c:forEach>

<script src="../resources/js/user-board.js"></script>
</body>
</html>