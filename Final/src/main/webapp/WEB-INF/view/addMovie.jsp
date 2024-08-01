<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>			
	<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
	
	<h1>addMovie</h1>
	<br>
	<form action="${pageContext.request.contextPath}/addMovie" method="post" enctype="multipart/form-data">
	<table>
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
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>

		<tr>
			<td>감독</td>
			<td><input type="text" name="director"></td>
		</tr>

		<tr>
			<td>배급사</td>
			<td><input type="text" name="producer"></td>
		</tr>

		<tr>
			<td>개봉날짜</td>
			<td><input type="date" name="releaseDate"></td>
		</tr>

		<tr>
			<td>상영시간</td>
			<td><input type="number" name="runtime"></td>
		</tr>

		<tr>
			<th>줄거리</th>		
			<td><textarea name="description"maxlength="500">${m.description}</textarea></td>	
		</tr>

		<tr>
			<td>영화포스터</td>
			<td><input type="file" name="movieFile"></td>
		</tr>
		
		<tr>
			<td>영화코드</td>
			<td><input type="number" name="bcode"></td>
		</tr>

	</table>
		
		<button type="submit">추가</button>
	</form>
</body>
</html>