<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: Arial, sans-serif;
    }
    nav ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex; 
    }
    nav ul li {
        margin-right: 10px;
    }
</style>




</head>
<body>
	<nav>
        <ul>
            <li><a href= "${pageContext.request.contextPath}/user/main">메인</a></li>
            <li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
            
        </ul>
    </nav>
	
		
	
</body>
</html>