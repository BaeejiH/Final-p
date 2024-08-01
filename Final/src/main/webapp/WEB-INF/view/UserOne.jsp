<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   	
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

<script type="text/javascript">
	function deleteUserOne() {
	    if (confirm("정말로 삭제하시겠습니까?")) {
	        $("#UserOneForm").submit(); 
	    }
	}
</script>
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
	<h1>회원 상세보기</h1>
	
	<form action="${pageContext.request.contextPath}/UserOne" method="post" id="UserOneForm">
	<table>
		<tr>
			<td>userId</td>
			<td><input type="hidden" name="userId" value="${us.userId}">${us.userId}</td>
		</tr>
		
		<tr>
			<td>userName</td>
			<td><input type="text" name="userName" value="${us.userName}" maxlength="15"></td>	
		</tr>
		
		<tr>
			<td>email</td>
			<td><input type="email" name="email" value="${us.email}" maxlength="30"></td>
		</tr>
		
		<tr>
			<td>gender</td>
			<td>
				<select name="gender">
					<option value="남"<c:if test="${us.gender == '남'}">selected</c:if>>남</option>
					<option value="여"<c:if test="${us.gender == '여'}">selected</c:if>>여</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>updateDate</td>
			<td><input type="date" name="updateDate" value="${us.updateDate}"></td>
		</tr>
		
		<tr>
			<td>createDate</td>
			<td><input type="date" name="createDate" value="${us.createDate}"></td>
		</tr>
	</table>
	
	<button type="submit">수정</button>
	
	</form>
	
	<br/>
	<!-- 관리자 기능 -->
	<c:if test="${loginAdmin != null }">
		<a href="${pageContext.request.contextPath}/removeUser?userId=${us.userId}">
			<button type="button" onclick="deleteUserOne()">삭제</button>
		</a>
	</c:if>
	<a href="${pageContext.request.contextPath}/modifyPw"><button>비밀번호변경</button></a>
	
	
</body>
</html>