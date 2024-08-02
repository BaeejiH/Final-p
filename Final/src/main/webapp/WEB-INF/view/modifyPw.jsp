<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
	<h1>비밀번호변경</h1>
	
	<form method="post" action="${pageContext.request.contextPath}/modifyPw">
		<table>
		<tr>
			<td>
				<input type="hidden" name="userId" value="${loginUser}">
			</td>
			
		</tr>
			
			<tr>
				<td>현재 비밀번호</td>
				<td><input type="password" name="userPw"></td>
				 <c:if test="${not empty Serror}">
			        <div style="color: red;">
			            ${Serror}
			        </div>
			    </c:if>
			</tr>
			
			<tr>
				<td>변경 비밀번호</td>	
				<td><input type="password" name="newPw"></td>
			</tr>
		</table>
		
		<button type="submit">비밀번호 변경</button>
		
	</form>
	
	<!-- 현재 비밀번호와 일치하지 않을때 보여주는 오류 메시지 -->
	 <c:if test="${not empty error}">
        <div style="color: red;">
            ${error}
        </div>		
    </c:if>
</body>
</html>