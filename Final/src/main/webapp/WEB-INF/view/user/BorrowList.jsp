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
<%
	if (session.getAttribute("loginUser") == null) {
		response.sendRedirect(request.getContextPath() + "/public/login");
		return;
	}
%>
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
	<h1>대여목록</h1>
	
	<table>
		<tr>
			<td>영화코드</td>
			<td>회원아이디</td>
			<td>제목</td>
			<td>대여날짜</td>
			<td>반납날짜</td>
			<td>대여상태</td>
		</tr>

		<c:forEach var="br" items="${list}">
				<tr>
					<td>${br.bcode}</td>
					<td>${br.userId}</td>
					<td>${br.title}</td>
					<td>${br.startDate}</td>
					<td>${br.endDate}</td>
					<td>${br.bhave}</td>
					<td>
						<form action="${pageContext.request.contextPath}/modifyBhave"
							method="post">
							<input type="hidden" name="bcode" value="${br.bcode}">
							<input type="hidden" name="userId" value="${br.userId}">
							<c:choose>
								<c:when test="${br.bhave == '반납완료'}">
									<span>반납 처리중입니다.</span>
								</c:when>
								
								<c:when test="${br.bhave == '대여가능'}">
									<span>반납 확인이 완료되었습니다.</span>
								</c:when>
								
								<c:otherwise>
									<button type="submit">반납</button>
								</c:otherwise>

							</c:choose>

						</form>
					</td>
				</tr>
		</c:forEach>


	</table>
</body>
</html>