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
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        flex-direction: column;
    }
    .container {
        display: flex;
        flex: 1;
        height: 100%;
    }
    .sidebar {
        flex: 0 0 20%; /* 사이드바는 너비의 20%를 차지합니다. */
        padding: 10px;
        background-color: #f4f4f4;
        border-right: 1px solid #ccc;
        height: 100%;
    }
    .content {
        flex: 1;
        padding: 10px;
        overflow-y: auto; /* 내용이 너무 길면 세로 스크롤 추가 */
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    td {
        padding: 8px;
        border: 1px solid #ccc;
    }
</style>
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>   
    <div class="container">
        <div class="content">
            <h1>내정보 열람</h1>
            
            <form action="${pageContext.request.contextPath}/MyUser" method="post" id="updateForm">
                <table>
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
                        <td><input type="text" name="email" value="${us.email}" maxlength="30"></td>
                    </tr>
                    <tr>
                        <td>gender</td>
                        <td>
                            <select name="gender">
                                <option value="남" <c:if test="${us.gender == '남'}">selected</c:if>>남</option>
                                <option value="여" <c:if test="${us.gender == '여'}">selected</c:if>>여</option>
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
                <button type="button" onclick="Update()">수정</button>
            </form>
        </div>
    </div>
</body>

</html>