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
	${loginUserName}님 반갑습니다
	
	<div><a href="${pageContext.request.contextPath}/logout">로그아웃</a></div>
					
	
	<h2>Menu</h2>
	
	<%
		HttpSession sessionn = request.getSession();
		String loginUser = (String) sessionn.getAttribute("loginUser");
		
		System.out.print("sessionn"+loginUser);
	%>
	
	
	
	<div>1.<a href="${pageContext.request.contextPath}/MyUser?userId=${loginUser}">내정보 열람</a></div>
	
	<div>2.<a href="${pageContext.request.contextPath}/MovieList">영화리스트</a></div>
	
	<div>3.<a  href="${pageContext.request.contextPath}/">대여 정보</a></div>
	
</body>
</html>