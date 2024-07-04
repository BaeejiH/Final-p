<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보리스트</h1>

	<table border="1">
		<tr>
			<td>userId</td>
			<td>userName</td>
		</tr>

		<c:forEach var="u" items="${list}">
			<tr>
				<td>${u.userId}</td>
				<td><a href="${pageContext.request.contextPath}/UserOne?userId=${u.userId}">${u.userName}</a></td>
			</tr>
		</c:forEach>

	</table>


	<c:if test="${ currentPage> 1 }">
		<a
			href="${pageContext.request.contextPath}/UserList?currentPage=${beginRow}">처음</a>
		<a
			href="${pageContext.request.contextPath}/UserList?currentPage=${currentPage-1}">이전</a>
	</c:if>

	<c:if test="${currentPage < LastPage}">
		<a
			href="${pageContext.request.contextPath}/UserList?currentPage=${currentPage+1}">다음</a>
		<a
			href="${pageContext.request.contextPath}/UserList?currentPage=${LastPage}">마지막</a>
	</c:if>
</body>
</html>