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
		
		<table border="1">
			<tr>
				<td>title</td>
				<td>image</td>
	
				
			</tr>
		
		<c:forEach var="m" items="${list }">
			<tr>
				<td>${m.title}</td>
				<td>${m.image}</td>			
			</tr>		
		</c:forEach>
				
		</table>
		
		
		
</body>
</html>