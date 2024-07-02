<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>		
	<h1>addMovie</h1>
	
	<form action="${pageContext.request.contextPath}/addMovie" method="post">
	<table border="1">
		<tr>
			<td>genre</td>
			<td>
			<select name="genre">
				<option value="SF판타지">SF판타지</option>
				<option value="공포">공포</option>
				<option value="액션">액션</option>
				<option value="코미디">코미디</option>
			</select>
			</td>
		</tr>

		<tr>
			<td>title</td>
			<td><input type="text" name="title"></td>
		</tr>

		<tr>
			<td>director</td>
			<td><input type="text" name="director"></td>
		</tr>

		<tr>
			<td>producer</td>
			<td><input type="text" name="producer"></td>
		</tr>

		<tr>
			<td>releaseDate</td>
			<td><input type="date" name="releaseDate"></td>
		</tr>

		<tr>
			<td>runtime</td>
			<td><input type="number" name="runtime"></td>
		</tr>

		<tr>
			<td>description</td>
			<td><input type="text" name="description"></td>
		</tr>

		<tr>
			<td>image</td>
			<td><input type="text" name="image"></td>
		</tr>

	</table>
		
		<button type="submit">추가</button>
	</form>
</body>
</html>