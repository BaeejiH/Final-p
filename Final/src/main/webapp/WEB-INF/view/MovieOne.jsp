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
	
	<form action="${pageContext.request.contextPath}/MovieOne" method="post">
	<table border="1">
		<tr>
			<td>movieNum</td>
			<td><input type="hidden" name="movieNum" value="${m.movieNum}">${m.movieNum}</td>
		</tr>

		<tr>
			<td>genre</td>
			<td><input type="text" name="genre" value="${m.genre}"></td>
		</tr>

		<tr>
			<td>title</td>
			<td><input type="text" name="title" value="${m.title}"></td>
		</tr>

		<tr>
			<td>director</td>
			<td><input type="text" name="director" value="${m.director}"></td>
		</tr>

		<tr>
			<td>producer</td>
			<td><input type="text" name="producer" value="${m.producer}"></td>
		</tr>

		<tr>
			<td>releaseDate</td>
			<td><input type="date" name="releaseDate" value="${m.releaseDate}"></td>
		</tr>

		<tr>
			<td>runtime</td>
			<td><input type="number" name="runtime" value="${m.runtime}"></td>
		</tr>
				
		<tr>
			<td>description</td>
			<td><input type="text" name="description" value="${m.description}"></td>
		</tr>

		<tr>
			<td>image</td>
			<td><input type="text" name="image" value="${m.image}"></td>
		</tr>
		
		<tr>
			<td>bcode</td>
			<td><input type="text" name="bcode" value="${m.bcode}"></td>
		</tr>

	</table>
		
		<button type="submit">수정</button>
	</form>
	
	<a href="${pageContext.request.contextPath}/removeMovie?movieNum=${m.movieNum}">삭제</a>
</body>
</html>