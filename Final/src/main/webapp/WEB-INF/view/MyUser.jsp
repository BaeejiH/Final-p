<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script>
	function Update() {
	    if (confirm("내정보를 수정하시겠습니까?")) {
	        $("#updateForm").submit(); 
	    }
	}
</script>
</head>
<body>
	<h1>내정보 열람</h1>
	
	<form action="${pageContext.request.contextPath}/MyUser" method="post" id="updateForm">
	<table border="1">
		<tr>
			<td>userId</td>
			<td><input type="hidden" name="userId" value="${us.userId}">${us.userId}</td>
		</tr>

		<tr>
			<td>userName</td>
			<td><input type="text" name="userName" value="${us.userName}" maxlength="10"></td>
		</tr>

		<tr>
			<td>email</td>
			<td><input type="text" name="email" value="${us.email}"maxlength="30"></td>
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
			<td><input type=date name="updateDate" value="${us.updateDate}"></td>
		</tr>

		<tr>
			<td>createDate</td>
			<td><input type="date" name="createDate" value="${us.createDate}"></td>
		</tr>
	</table>
			<button type="button" onclick="Update()">수정</button>
	</form>
</body>

</html>