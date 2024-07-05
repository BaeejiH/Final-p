<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내정보 열람</h1>
	<table border="1">
		<tr>
			<td>userId</td>
			<td>${us.userId}</td>
		</tr>

		<tr>
			<td>userName</td>
			<td>${us.userName}</td>
		</tr>

		<tr>
			<td>email</td>
			<td>${us.email}</td>
		</tr>

		<tr>
			<td>gender</td>
			<td>${us.gender}</td>
		</tr>

		<tr>
			<td>updateDate</td>
			<td>${us.updateDate}</td>
		</tr>

		<tr>
			<td>createDate</td>
			<td>${us.createDate}</td>
		</tr>
	</table>
</body>
</html>