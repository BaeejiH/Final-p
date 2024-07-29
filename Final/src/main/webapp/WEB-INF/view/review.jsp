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
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
	<h1>리뷰</h1>

	<table>
		<tr>
			<td>제목</td>
			<td>리뷰날짜</td>
		</tr>

		<c:forEach var="r" items="${Reviewlist}">
			<tr>
				<td><a href="${pageContext.request.contextPath}/ReviewOne?reviewId=${r.reviewId}">${r.reviewTitle}</a></td>
				<td>${r.reviewDate}</td>
			</tr>


		</c:forEach>
		

	</table>

</body>
</html>