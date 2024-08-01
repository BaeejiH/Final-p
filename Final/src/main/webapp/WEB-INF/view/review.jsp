<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }
    
    h1 {
        text-align: center;
        padding: 20px 0;
        color: #333;
    }
    
    .review-list {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    .review-item {
        border-bottom: 1px solid #ddd;
        padding: 15px 0;
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
    }
    
    .review-item:last-child {
        border-bottom: none;
    }
    
    .review-meta {
        font-size: 0.9em;
        color: #666;
        margin-bottom: 10px;
    }
    
    .review-user {
        font-weight: bold;
        margin-right: 10px;
    }
    
    .review-date {
        font-style: italic;
    }
    
    .review-title a {
        text-decoration: none;
        color: #007bff;
        font-size: 1.2em;
    }
    
    .review-title a:hover {
        text-decoration: underline;
    }
    
    .review-content {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        color: #333;
        line-height: 1.6;
    }
    
    .review-text {
        flex-grow: 1;
        margin-right: 20px;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 10; 
        overflow: hidden;
        text-overflow: ellipsis;
    }
    
    .review-content img {
        max-width: 150px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .add-review {
        text-align: center;
        margin: 20px 0;
    }
    
    .add-review a {
        text-decoration: none;
        color: #fff;
        background-color: #ed786a;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s;
    }
    
    .add-review a:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
<h1 style="color: black">리뷰</h1>

    <div class="review-list">
        <c:forEach var="r" items="${Reviewlist}">
            <div class="review-item">
                <div class="review-content">
                    <div>
                        <div class="review-meta">
                            <span class="review-user">§${r.userId}§</span>
                            <span class="review-date">${r.reviewDate}</span>
                        </div>
                        <div class="review-title">
                            <a href="${pageContext.request.contextPath}/ReviewOne?reviewId=${r.reviewId}">${r.reviewTitle}</a>
                        </div>
                        <div class="review-text"><!-- fn:subString: 리뷰내용이 보여지는 글자수를 제한. taglib으로 글자수가 200이 넘을때로 분기함. -->
                            <c:choose>
                                <c:when test="${fn:length(r.reviewContent) > 200}">
                                    ${fn:substring(r.reviewContent, 0, 200)}...
                                </c:when>
                                <c:otherwise>
                                    ${r.reviewContent}
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <img src="/Final/img/${r.fileName}">
                </div>
            </div>
        </c:forEach>
    </div>

<div class="add-review">
    <a href="${pageContext.request.contextPath}/addReview?movieNum=${movieNum}">리뷰등록</a>
</div>

</body>
</html>