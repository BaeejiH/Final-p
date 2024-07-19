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
<%
	if (session.getAttribute("loginUser") == null) {
		response.sendRedirect(request.getContextPath() + "/public/login");
		return;
	}
%>
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
	<h1>BorrowList</h1>
	
	<table>
		<tr>
			<td>bcdoe</td>
			<td>userId</td>
			<td>title</td>
			<td>startDate</td>
			<td>endDate</td>
			<td>bhave</td>
		</tr>

		<c:forEach var="br" items="${list}">
				<tr>
					<td>${br.bcode}</td>
					<td>${br.userId}</td>
					<td>${br.title}</td>
					<td>${br.startDate}</td>
					<td>${br.endDate}</td>
					<td>${br.bhave}</td>
					<td>
						<form action="${pageContext.request.contextPath}/modifyBhave"
							method="post">
							<input type="hidden" name="bcode" value="${br.bcode}">

							<c:choose>
								<c:when test="${br.bhave == '반납완료'}">
									<span>반납이 완료된 영화입니다.</span>
								</c:when>
								<c:otherwise>
									<button type="submit">반납</button>
								</c:otherwise>

							</c:choose>

						</form>
					</td>
				</tr>
		</c:forEach>


	</table>
</body>
</html>