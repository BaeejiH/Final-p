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
	if (session.getAttribute("loginAdmin") == null) {
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
			<td></td>
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
						<c:choose>
							<c:when test="${br.bhave == '반납완료'}">
							<form action="${pageContext.request.contextPath}/modifyeBhaveByadmin" method="post">
								<input type="hidden" name="bhave" value="${br.bhave}">
								<input type="hidden" name="bcode" value="${br.bcode}">
								<input type="hidden" name="userId" value="${br.userId}">
								<button type="submit">반납확인</button>
							</form>
							</c:when>
							<c:otherwise>
								☆	☆	☆
							</c:otherwise>
						</c:choose>	
					</td>
				</tr>
		</c:forEach>	
		
	</table>			
	
		<c:if test="${ currentPage> 1 }">
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${beginRow}">처음</a>
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${currentPage-1}">이전</a>
	</c:if>

	<c:if test="${currentPage < LastPage}">
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${currentPage+1}">다음</a>
		<a
			href="${pageContext.request.contextPath}/admin/BorrowList?currentPage=${LastPage}">마지막</a>
	</c:if>
</body>
</html>