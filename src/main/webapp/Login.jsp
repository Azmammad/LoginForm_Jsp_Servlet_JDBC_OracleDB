<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Login Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 350px;
            text-align: center;
        }

        .login-container h1 {
            margin-bottom: 30px;
            color: #333;
        }

        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            color: #555;
            font-size: 14px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
    </style>
    <script type="text/javascript">
        function checkEmptyValues(){
            if (document.getElementById('userName').value == ""){
                alert("Please Enter your UserName");
                return false;
            }
            if (document.getElementById('password').value == ""){
                alert("Please Enter your password");
                return false;
            }
        }
    </script>
</head>
<body>
<div class="login-container">
    <h1>Student Login Form</h1>
    <form action="Login" method="post" onsubmit="return checkEmptyValues()">
        <div class="input-group">
            <label for="userName">UserName</label>
            <input type="text" id="userName" name="userName">
        </div>
        <div class="input-group">
            <label for="password">Password</label>
            <input type="text" id="password" name="password">
        </div>
        <input type="submit" value="Login">
    </form>
</div>
</body>
</html>
