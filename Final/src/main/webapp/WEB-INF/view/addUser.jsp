<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보 등록</h1>
	
	<form action="${pageContext.request.contextPath}/addUser" method="post">
	<table border="1">
		<tr>
			<td>userId</td>
			<td><input type="text" name="userId"></td>
		</tr>
												
		<tr>
			<td>userName</td>
			<td><input type="text" name="userName"></td>
		</tr>
		
		<tr>
			<td>email</td>
			<td><input type="email" name="email"></td>
		</tr>
		
		<tr>
			<td>gender</td>
			<td>
				<select name="gender">
					<option value="남">남</option>
					<option value="여">여</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>updateDate</td>
			<td><input type="datetime" name="updateDate"></td>
		</tr>
		
		<tr>
			<td>createDate</td>
			<td><input type="datetime" name="createDate"></td>
		</tr>
	</table>
		
		<button type="submit">회원등록</button>
		
	</form>
	
	
</body>
</html>