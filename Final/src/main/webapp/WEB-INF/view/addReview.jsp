<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
	<h1>AddReview</h1>
<form action="${pageContext.request.contextPath}/addReview" method="post">
	<table>
	
		<tr>
			<td>review_title</td>
			<td><input type="text" name="reviewTitle" maxlength="30"></td>
		</tr>

		<tr>
			<td>userId</td>
			<td><input type="text" name="userId" maxlength="10"></td>
		</tr>

		<tr>
			<td>movieNum</td>
			<td><input type="number" name="movieNum" maxlength="10"></td>
		</tr>

		<tr>
			<td>reviewContent</td>
			<td>
				<textarea name="reviewContent" maxlength="200"></textarea>
			</td>
		</tr>
		
		<tr>
			<td>reviewDate</td>
			<td><input type="date" name="reviewDate"></td>
		</tr>
		
	</table>
		<br>
		<button type="submit">리뷰 등록</button>
	
	
	</form>
</body>
</html>