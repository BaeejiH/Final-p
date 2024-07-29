<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출연 배우정보</title>

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f9fa;
    }
    
    .container {
        width: 90%;
        margin: 20px auto;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }

    .actor-card {
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        width: 220px;
        margin: 10px;
        text-align: center;
        transition: transform 0.3s ease;
    }

    .actor-card:hover {
        transform: scale(1.05);
    }

    .actor-card img {
        width: 100%;
        height: auto;
        border-bottom: 1px solid #ddd;
    }

    .actor-card .details {
        padding: 15px;
    }

    .actor-card .details h3 {
        margin: 10px 0 5px;
        font-size: 18px;
        color: #333;
    }

    .actor-card .details p {
        margin: 5px 0;
        font-size: 14px;
        color: #666;
    }
    
    .actor-card .details p.gender {
        font-weight: bold;
    }

    .actor-card .details p.age {
        color: #FF5E00;
    }
</style>

</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>

<div class="container">
    <c:forEach var="a" items="${list}">
        <div class="actor-card">
            <img src="/Final/img/${a.actorImg}" width="500px;">
            <div class="details">
                <h4>${a.actorName}</h4>
                <p class="gender">${a.actorMN}</p>
                <p class="gender">${a.actorGender}</p>
                <p class="age">${a.actorAge} years old</p>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>