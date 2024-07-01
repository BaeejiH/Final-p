<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>MovieOne</h1>


	<c:set var="m" value="${movieDto}" /><!-- c:set 태그를 통해서 movieDto를 m으로 설정 -->
	<table border="1">
		<tr>
			<td>movieNum</td>
			<td>${m.movieNum}</td>
		</tr>

		<tr>
			<td>genre</td>
			<td>${m.genre}</td>
		</tr>

		<tr>
			<td>title</td>
			<td>${m.title}</td>
		</tr>

		<tr>
			<td>director</td>
			<td>${m.director}</td>
		</tr>

		<tr>
			<td>producer</td>
			<td>${m.producer}</td>
		</tr>

		<tr>
			<td>releaseDate</td>
			<td>${m.releaseDate}</td>
		</tr>

		<tr>
			<td>runtime</td>
			<td>${m.runtime}</td>
		</tr>

		<tr>
			<td>description</td>
			<td>${m.description}</td>
		</tr>

		<tr>
			<td>image</td>
			<td>${m.image}</td>
		</tr>

	</table>
	<a href="${pageContext.request.contextPath}/updateMovie">수정</a>
	<a href="${pageContext.request.contextPath}/deleteMovie">삭제</a>
</body>
</html>