<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 대여 규칙</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        color: #333;
    }
    h1 {
        background-color: #ed786a;
        
        padding: 20px;
        text-align: center;
        margin: 0;
    }
    h3 {
        border-bottom: 2px solid #ed786a;
        padding-bottom: 5px;
        margin-bottom: 10px;
    }
    div {
        margin-bottom: 20px;
        padding: 10px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .container {
        width: 80%;
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
</style>
</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
<div class="container">
    <h1 style="color: black;">영화 대여 규칙</h1>

    <h3 style="color: red;">1. 회원가입 필수</h3>
    <div>영화를 대여하기 위해서는 필수적으로 회원가입을 하셔야 합니다.</div>

    <h3 style="color: red;">2. 대여 기간 준수</h3>
    <div>반납일자를 준수하여 지정된 날짜에 꼭 반납을 부탁드립니다.</div>

    <h3 style="color: red;">3. 회원 정보 변경 시 알림</h3>
    <div>회원 정보가 변경될 시 원활한 진행을 위해 회원님의 변경된 정보를 이메일로 전송 바랍니다.</div>

    <h3 style="color: red;">4. 사전 예약 불가능</h3>
    <div>저희 영화 시스템은 사전 예약이 불가능합니다. 대여 가능한 영화만 대여 부탁드립니다.</div>

    <h3 style="color: red;">5. 영화 반환 상태</h3>
    <div>대여한 영화를 훼손 시 손해 배상 책임이 요구됩니다.</div>

    <h3 style="color: red;">6. 대여 연장 불가능</h3>
    <div>영화 대여는 정해진 기간 내에서만 시청 가능합니다.</div>

    <h3 style="color: red;">7. 연령 제한 없음</h3>
    <div>모든 영화는 전체 관람 가능합니다.</div>
</div>
</body>
</html>