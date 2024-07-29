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
		if (session.getAttribute("loginUser") == null && session.getAttribute("loginAdmin") == null) {
			response.sendRedirect(request.getContextPath() + "/public/login");
			return;
		}
	%>
	
	
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>	
	<h1>영화 목록</h1>
	<h3>영화 검색</h3>

	<form action="${pageContext.request.contextPath}/MovieList"
		method="get">

		<div>
			영화 제목:<input type="text" name="searchMovie">
			<button type="submit">검색</button>
		</div>

	</form>

	<br>

	<div>
		<table>
			<tr>
				<td style="text-align: center;">영화번호</td>
				<td style="text-align: center;">제목</td>
				<td style="text-align: center;">대여수</td>
				<td style="text-align: center;">대여상태<td>
			</tr>

			<c:forEach var="m" items="${list}">
				<tr>
					<td style="text-align: center;">${m.movieNum}</td>
					<td style="text-align: center;"><a
						href="${pageContext.request.contextPath}/MovieOne?movieNum=${m.movieNum}">${m.title}</a></td>
					<td style="text-align: center;">${m.borrow_Count}</td>
					<td style="text-align: center;">	
					
					<!-- 대여정보가 null이 아니라면 대여중임을 표시 -->	
							<c:choose>
								<c:when test="${m.bhave == '반납완료'}">
									<span>반납 처리중</span>
								</c:when>
								<c:when test="${m.bhave == '대여중'}"> 
									<span>대여중</span>
								</c:when>
							
								<c:otherwise>
									<a	
										href="${pageContext.request.contextPath}/user/addBorrow?bcode=${m.bcode}">
										<button>대여하기</button>
									</a>
								</c:otherwise>
							</c:choose>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>


	<c:if test="${ currentPage> 1 }">
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${beginRow}">처음</a>
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${currentPage-1}">이전</a>
	</c:if>

	<c:if test="${currentPage < LastPage}">
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${currentPage+1}">다음</a>
		<a
			href="${pageContext.request.contextPath}/MovieList?currentPage=${LastPage}">마지막</a>
	</c:if>

</body>
</html>