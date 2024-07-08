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
	${loginAdminName}님 반갑습니다
	<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
	
	<h2>menu</h2>
	
	<%
		HttpSession sessionn = request.getSession();
		String loginAdmin = (String) sessionn.getAttribute("loginAdmin");
		
		System.out.print("sessionn"+loginAdmin);
	%>
	
	<div>1.<a href="${pageContext.request.contextPath}/MovieList">영화 정보 열람</a></div>
	
	<div>2.<a href="${pageContext.request.contextPath}/addMovie">영화추가</a></div>
	
	<div>3.<a href="${pageContext.request.contextPath}/UserList">회원정보 열람</a></div>
	
	<div>4.<a href="${pageContext.request.contextPath}/addUser">회원정보 등록</a></div>
	
	<div>5.<a href="${pageContext.request.contextPath}/ex">영화 대여정보 입력</a></div>
	
	<div>6.<a href="${pageContext.request.contextPath}/ex">회원 대여정보 열람</a></div>
	
</body>
</html>