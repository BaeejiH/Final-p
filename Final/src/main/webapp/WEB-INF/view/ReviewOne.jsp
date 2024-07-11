<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file = "/WEB-INF/view/CSS/header.jsp"  %>
	<h1>ReviewOne</h1>
	
	<form action="${pageContext.request.contextPath}/modifyReview" method="post">
	<table border="1">
	
		<tr>
			<td>reviewId</td>
			<td><input type="hidden" name="reviewId" maxlength="30" value="${rDto.reviewId}">${rDto.reviewId}</td>
		</tr>	
			
		<tr>
			<td>review_title</td>
			<td><input type="text" name="reviewTitle" maxlength="30" value="${rDto.reviewTitle}"></td>
		</tr>

		<tr>
			<td>userId</td>
			<td><input type="text" name="userId" maxlength="10"  value="${rDto.userId}"></td>
		</tr>

		<tr>
			<td>movieNum</td>
			<td><input type="number" name="movieNum" maxlength="10"  value="${rDto.movieNum}"></td>
		</tr>

		<tr>
			<td>reviewContent</td>
			<td>
				<textarea name="reviewContent" maxlength="200">${rDto.reviewContent}"</textarea>
			</td>
		</tr>
		
		<tr>
			<td>reviewDate</td>
			<td><input type="date" name="reviewDate"  value="${rDto.reviewDate}"></td>
		</tr>
		
	</table>
		<br>
		<button type="submit">리뷰 수정</button>
	</form>
	
	<a href="${pageContext.request.contextPath}/removeReview?reviewId=${rDto.reviewId}"><button>리뷰 삭제</button></a>
	
</body>
</html>