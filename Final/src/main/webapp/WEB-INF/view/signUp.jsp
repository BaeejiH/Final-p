<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<h1>signUp</h1>

	<input type="text" id="id">
	<button type="button" id="idck">중복검사</button>

	<hr>
	<form action="${pageContext.request.contextPath}/signUp" method="post"
		id="signUpForm">
		<table>

			<tr>
				<td>userId</td>
				<td><input type="text" name="userId" id="userId" maxlength="10"></td>
			</tr>

			<tr>
				<td>userName</td>
				<td><input type="text" name="userName" maxlength="10"></td>
			</tr>

			<tr>
				<td>email</td>
				<td><input type="email" name="email" maxlength="30"></td>
			</tr>

			<tr>
				<td>gender</td>
				<td><select name="gender">
						<option value="남">남</option>
						<option value="여">여</option>
				</select></td>
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

		<button type="submit">signUp</button>

	</form>

	<script>
        $('#idck').click(function() {
            if ($('#id').val() == '') { // 중복검사를 확인하는 값이 없으면 alert
                alert('중복검사 아이디를 입력하세요');
                $('#id').focus();
                return;
            }
            
            $.ajax({
                url: '${pageContext.request.contextPath}/public/idcheck',
                method: 'POST',
                data: { userId: $('#id').val() },
                success: function(response) {
                    console.log('response:', response);
                    if (response == "0") {
                        alert('사용 가능한 아이디입니다');
                        $('#userId').val($('#id').val()); // id=id인 입력 필드 값이  id=userId인 필드의 값으로 설정됨.
                    } else {
                        alert('이미 사용 중인 아이디입니다');
                        $('#id').focus();
                    }
                },
                error: function(xhr, status, error) {
                    console.error('아이디 중복 검사 오류:', error);
                }
            });
        });
    </script>















</body>
</html>