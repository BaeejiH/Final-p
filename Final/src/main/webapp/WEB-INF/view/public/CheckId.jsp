<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style>
    html, body {
        margin: 0;
        padding: 0;
        font-family: 'Source Sans Pro', sans-serif;
        background: #f0f0f0;
        height: 100%;
    }

    body {
        line-height: 1.65em;
        color: #777;
        font-size: 15pt;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .container {
        max-width: 600px;
        width: 100%;
        padding: 20px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #ED786A;
        text-align: center;
        margin: 20px 0;
    }

    table {
        width: 100%;
        margin-bottom: 20px;
        border-collapse: collapse;
    }

    td {
        padding: 10px;
        vertical-align: middle;
    }

    input[type="email"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        background-color: #ED786A;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
        margin-top: 10px;
    }

    button:hover {
        background-color: #F2CB61;
    }

    p {
        text-align: center;
        font-size: 18px;
        color: #333;
        margin-top: 20px;
    }

    .row {
        display: flex;
        flex-wrap: wrap;
        box-sizing: border-box;
    }

    .row>.col-1 { width: 8.33333%; }
    .row>.col-2 { width: 16.66667%; }
    .row>.col-3 { width: 25%; }
    .row>.col-4 { width: 33.33333%; }
    .row>.col-5 { width: 41.66667%; }
    .row>.col-6 { width: 50%; }
    .row>.col-7 { width: 58.33333%; }
    .row>.col-8 { width: 66.66667%; }
    .row>.col-9 { width: 75%; }
    .row>.col-10 { width: 83.33333%; }
    .row>.col-11 { width: 91.66667%; }
    .row>.col-12 { width: 100%; }

    @media screen and (max-width: 1680px) {
        .container { width: 68em; }
    }

    @media screen and (max-width: 1280px) {
        .container { width: calc(100% - 80px); }
    }

    @media screen and (max-width: 980px) {
        .container { width: calc(100% - 100px); }
    }

    @media screen and (max-width: 736px) {
        .container { width: calc(100% - 40px); }
    }
	.login-link-container {
	    text-align: center;
	    margin-top: 20px;
	}
	
	.login-link-container a {
	    display: inline-block;
	    background-color: #ED786A; 
	    color: white; 
	    text-decoration: none;
	    padding: 10px 20px; 
	    border-radius: 4px;
	    font-size: 16px;
	    font-weight: bold;
	    transition: background-color 0.3s ease;
	}
	
	.login-link-container a:hover {
	    background-color: #d96459;
	}
	    
</style>
</head>
<body>
    <div class="container">
        <h1>아이디 찾기</h1>
        
        <form action="${pageContext.request.contextPath}/public/CheckId" method="post">
            <table>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" placeholder="이메일을 입력해주세요" required></td>
                </tr>
            </table>
            <button type="submit">아이디 찾기</button>
        </form>
        
        <c:if test="${not empty userId}">
            <p>회원님의 아이디는 <strong>${userId}</strong> 입니다.</p>
        </c:if>
        <c:if test="${empty userId}">
            <p>아이디를 찾을 수 없습니다.</p>
        </c:if>
        
          <div  class="login-link-container"> 
          	<a href="${pageContext.request.contextPath}/public/login">로그인</a>
          </div>
    </div>
    

</body>
</html>