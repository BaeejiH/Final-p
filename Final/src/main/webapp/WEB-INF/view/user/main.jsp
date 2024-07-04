<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<h1>User Main</h1>
	${loginUser}님 반갑습니다
	
	<div><a href="${pageContext.request.contextPath}/logout">로그아웃</a></div>
	
	
	<h2>Menu</h2>
	
	<div><a>내정보 열람</a></div>
	
	<div><a href="${pageContext.request.contextPath}/MovieList">영화리스트</a></div>
	
	<div><a>대여 정보</a></div>
	
</body>
</html>