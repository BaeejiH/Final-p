<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Rental Signup</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    #signUpForm {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }

    table {
        width: 100%;
    }

    td {
        padding: 10px;
    }

    input[type="text"],
    input[type="email"],
    input[type="datetime"],
    input[type="password"],
    select {
        width: calc(100% - 20px);
        padding: 8px;
        margin: 5px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button {
        background-color: #ED786A;
        color:  white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: #F2CB61;
    }

    #idck {
        margin: 10px 0;
        padding: 8px 12px;
    }

    hr {
        margin: 20px 0;
        border: 1px solid #ddd;
    }
</style>
</head>
<body>
    <div id="signUpForm">
        <h1>Sign Up</h1>

        <input type="text" id="id" placeholder="Enter ID">
        <button type="button" id="idck">Check Availability</button>

        <hr>

        <form action="${pageContext.request.contextPath}/signUp" method="post" id="signUpForm">
            <table>
                <tr>
                    <td>User ID</td>
                    <td><input type="text" name="userId" id="userId" maxlength="10"></td>
                </tr>
                
                 <tr>
                    <td>User Pw</td>
                    <td><input type="password" name="userPw" maxlength="30"></td>
                </tr>

                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="userName" maxlength="10"></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" maxlength="30"></td>
                </tr>

                <tr>
                    <td>Gender</td>
                    <td>
                        <select name="gender">
                            <option value="남">남</option>
                            <option value="여">여</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>Update Date</td>
                    <td><input type="datetime" name="updateDate"></td>
                </tr>

                <tr>
                    <td>Create Date</td>
                    <td><input type="datetime" name="createDate"></td>
                </tr>
            </table>

            <button type="submit">Sign Up</button>
        </form>
    </div>
 
    <script>
        $('#idck').click(function() {
            if ($('#id').val() == '') {
                alert('Please enter an ID for availability check');
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
                        alert('ID is available');
                        $('#userId').val($('#id').val());
                    } else {
                        alert('ID is already in use');
                        $('#id').focus();
                    }
                },
                error: function(xhr, status, error) {
                    console.error('ID check error:', error);
                }
            });
        });
    </script>
</body>
</html>