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
<%@include file = "/WEB-INF/view/CSS/header.jsp"  %>

	<h1>Movie List</h1>
	<h3>영화 검색</h3>
	
	<div ><a href="${pageContext.request.contextPath}/addMovie"><button>영화추가</button></a></div>
	
	<form action="${pageContext.request.contextPath}/MovieList"
		method="get">
		
		<div>
			영화 제목:<input type="text" name="searchMovie">
			<button type="submit">검색</button>
		</div>
			
	</form>
	
	<br>
	
	<div>
		<table>
			<tr>
				<td>movieNum</td>
				<td>title</td>
				<td>image</td>
				<td>borrow<td>


			</tr>

			<c:forEach var="m" items="${list}">
				<tr>
					<td style="text-align: right;">${m.movieNum}</td>
					<td><a
						href="${pageContext.request.contextPath}/MovieOne?movieNum=${m.movieNum}">${m.title}</a></td>
					<td>${m.image}</td>
					<td><a href="${pageContext.request.contextPath}/user/addBorrow?bcode=${m.bcode}"><button>대여하기</button></a></td>
				</tr>
			</c:forEach>

		</table>
	</div>


	<c:if test="${ currentPage> 1 }">
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${beginRow}">처음</a>
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${currentPage-1}">이전</a>
	</c:if>

	<c:if test="${currentPage < LastPage}">
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${currentPage+1}">다음</a>
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${LastPage}">마지막</a>
	</c:if>




</body>
</html>