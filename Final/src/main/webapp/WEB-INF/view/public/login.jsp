<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="path/to/your/styles.css">

<style>
/* 기본 리셋 및 박스 모델 설정 */
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

body {
    font-family: 'Source Sans Pro', Arial, sans-serif;
    background-color : #F6F6F6;
    background-size: cover;
    color: #fff;
    line-height: 1.65;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* 중앙에 위치한 컨테이너 */
.container {
    background: rgba(0, 0, 0, 0.8);
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
    width: 100%;
    max-width: 400px;
    text-align: center;
}

h2 {
    color: #f39c12;
    margin-bottom: 20px;
    font-size: 1.8em;
}

form {
    margin: 0;
    padding: 0;
}

table {
    width: 100%;
    border-spacing: 0;
}

td {
    padding: 10px;
    text-align: left;
}

input[type="text"],
input[type="password"] {
    width: calc(100% - 22px);
    padding: 10px;
    border: 1px solid #fff;
    border-radius: 4px;
    background: #333;
    color: #fff;
    font-size: 14px;
}

button {
    width: 100%;
    background-color: #ED786A;
    color: #fff;
    border: none;
    padding: 10px;
    font-size: 16px;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
}

button:hover {
    background-color: #c0392b;
}

.signup-link {
    margin-top: 20px;
    font-size: 14px;
}

.signup-link a {
    color: #f39c12;
    text-decoration: none;
}

.signup-link a:hover {
    text-decoration: underline;
}

</style>
</head>

<body>
    <div class="container">
        <h2>로그인</h2>
        <form action="${pageContext.request.contextPath}/public/login" method="post">
            <table>
                <tr>
                    <td>아이디</td>
                    <td><input type="text" id="userId" name="userId"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" id="userPw" name="userPw"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" id="btnLogin">로그인</button>
                    </td>
                </tr>
            </table>
        </form>
        <div class="signup-link">
	        <a href="${pageContext.request.contextPath}/signUp">회원가입</a>|
            <a href="${pageContext.request.contextPath}/public/CheckId">아이디찾기</a>|
	        <a href="${pageContext.request.contextPath}/public/CheckPw">비밀번호찾기</a>
        </div>
    </div>
					
    <script>
        $(function(){
            $("#btnLogin").click(function(){
                let userId = $("#userId").val();
                let userPw = $("#userPw").val(); 
                if(userId === ""){
                    alert("아이디를 입력하세요");
                    $("#userId").focus();
                    return; 
                }
                if(userPw === ""){
                    alert("비밀번호를 입력하세요"); 
                    $("#userPw").focus();
                    return;
                }
            });
        });
    </script>
</body>
</html>