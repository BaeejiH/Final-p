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
</head>
<body>
	<h1>Review</h1>

	<table border="1">
		<tr>
			<td>reviewTitle</td>
			<td>reviewDate</td>
		</tr>

		<c:forEach var="r" items="${Reviewlist}">
			<tr>
				<td>${r.reviewTitle}</td>
				<td>${r.reviewDate}</td>
			</tr>


		</c:forEach>
		

	</table>

</body>
</html>