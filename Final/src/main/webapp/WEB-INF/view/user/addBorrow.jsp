<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<%
	HttpSession sessionn = request.getSession();
	String loginUser = (String) sessionn.getAttribute("loginUser");
	
	System.out.print("sessionn" + loginUser);
%>


</head>
<body>
<%@include file="/WEB-INF/view/CSS/header.jsp"%>
	<h1>대여신청</h1>


	<form action="${pageContext.request.contextPath}/user/addBorrow" method="post">
		<table>
			<tr>
				<td>Bcode</td>
				<td><input type="number" name="bcode" value="${param.bcode}"></td>
			</tr>

			<tr>
				<td>UserId</td>
				<td><input type="text" name="userId" value="${loginUser}"></td>
			</tr>

		</table>
			<button type="submit">대여신청</button>
	</form>




</body>
</html>