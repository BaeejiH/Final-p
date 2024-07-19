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
	if (session.getAttribute("loginAdmin") == null) {
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
				</tr>
		</c:forEach>	
		
	</table>			
	
		<c:if test="${ currentPage> 1 }">
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${beginRow}">처음</a>
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${currentPage-1}">이전</a>
	</c:if>

	<c:if test="${currentPage < LastPage}">
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${currentPage+1}">다음</a>
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${LastPage}">마지막</a>
	</c:if>
</body>
</html>