<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Movie List</h1>
		
		<h3>영화 검색</h3>
		<form action="${pageContext.request.contextPath}/MovieList" method="get">
			<div>영화 제목:<input type="text" name ="searchMovie" ><button type="submit">검색</button></div>
		</form>
		
		<br> <br>
		
		
		<table border="1">
			<tr>
				<td>movieNum</td>
				<td>title</td>
				<td>image</td>
	
				
			</tr>
		
		<c:forEach var="m" items="${list }">
			<tr>
				<td>${m.movieNum}</td>
				<td>${m.title}</td>
				<td>${m.image}</td>			
			</tr>		
		</c:forEach>
				
		</table>
		
		
		
		<c:if test="${ currentPage> 1 }">
			<a href="${pageContext.request.contextPath}/MovieList?currentPage=${beginRow}">처음</a>
			<a href="${pageContext.request.contextPath}/MovieList?currentPage=${currentPage-1}">이전</a>
		</c:if>
		
		<c:if test="${currentPage < LastPage}">
			<a href="${pageContext.request.contextPath}/MovieList?currentPage=${currentPage+1}">다음</a>
			<a href="${pageContext.request.contextPath}/MovieList?currentPage=${LastPage}">마지막</a>
		</c:if>
		
		
		
		
</body>
</html>