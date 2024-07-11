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
</head>

<body>
<%@include file = "/WEB-INF/view/CSS/header.jsp"  %>
	<h2>로그인</h2>
	<form action="${pageContext.request.contextPath}/public/login" method="post">
		<table border="1" width="400px">
			<tr>
				<td>아이디</td>
				<td align="justify"><input type="text" id="userId" name="userId"></td>
			</tr>
			<tr>
				<td >비밀번호</td>
				<td align="justify"><input type="password" id="userPw" name="userPw"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" id="btnLogin">로그인</button> 
				</td>
			</tr>
		</table>
	</form>
</body>

<div><a href="${pageContext.request.contextPath}/signUp">회원가입</a></div>


<script>
	$(function(){
	    $("#btnLogin").click(function(){
	        let userId = $("#userId").val();
	        let userPw = $("#userPw").val(); 
	        if(userId == ""){
	            alert("아이디를 입력하세요");
	            $("#userId").focus(); // 아이디를 입력하지 않았을 때 아이디 입력 창으로 포커스 이동
	            return; 
	        }
	        if(userPw == ""){
	            alert("비밀번호를 입력하세요"); 
	            $("#userPw").focus();
	            return;
	        }
	    });
	});
</script>




</html>