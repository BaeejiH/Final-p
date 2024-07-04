<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Admin Main</h1>
	${loginAdmin}님 반갑습니다
	<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
	
	<h2>menu</h2>
	
	<div><a href="${pageContext.request.contextPath}/ex">영화 정보 열람</a></div>
	
	<div><a href="${pageContext.request.contextPath}/ex">영화추가</a></div>
	
	<div><a href="${pageContext.request.contextPath}/ex">회원정보 열람</a></div>
	
	<div><a href="${pageContext.request.contextPath}/ex">영화 대여정보 입력</a></div>
	
	<div><a href="${pageContext.request.contextPath}/ex">회원 대여정보 열람</a></div>
	
</body>
</html>