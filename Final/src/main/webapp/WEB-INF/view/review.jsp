<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">

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
	    margin-top: 10px;
	    color: #333;
	    line-height: 1.6;
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
<h1>리뷰</h1>

	<div class="review-list">
		<c:forEach var="r" items="${Reviewlist}">
			<div class="review-item">
				<div class="review-meta">
					<span class="review-user">§${r.userId}§</span>
					<span class="review-date">${r.reviewDate}</span>
				</div>
				<div class="review-title">
					<a href="${pageContext.request.contextPath}/ReviewOne?reviewId=${r.reviewId}">${r.reviewTitle}</a>
				</div>
				<div class="review-content">${r.reviewContent}</div>
			</div>
		</c:forEach>
	</div>

<div class="add-review">
	<a href="${pageContext.request.contextPath}/addReview">리뷰등록</a>
</div>

</body>
</html>