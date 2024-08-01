<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   	    
<!DOCTYPE html>
<html>
<head>

<%
	if (session.getAttribute("loginUser") == null && session.getAttribute("loginAdmin") == null) {
		response.sendRedirect(request.getContextPath() + "/public/login");
		return;
	}
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>   
	<h1>즐겨찾기 영화목록</h1>
	
	<table>
		<tr>
			<td>회원아이디</td>
			<td>영화번호</td>
			<td>즐겨찾기날짜</td>
		</tr>
		
		<c:forEach var="f" items="${Favoritelist}">
			<tr>
				<td>${f.userId}</td>
				<td><a href="${pageContext.request.contextPath}/MovieOne?movieNum=${f.movieNum}">${f.movieNum}</a></td>
				<td>${f.favoriteDate}</td>
			</tr>	
		</c:forEach>
	</table>
	
</body>
</html>