<%--
  Created by IntelliJ IDEA.
  User: Venera
  Date: 9/26/2024
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Login Form</title>
    <script type="text/javascript">
        function checkEmptyValues(){
            if (document.getElementById('userName').value==""){
                alert("Please Enter your UserName");
                return false;
            }
            if (document.getElementById('password').value==""){
                alert("Please Enter your password");
                return false;
            }
        }
    </script>
</head>
<body>
<h1 align="center"> Student Login Form </h1>
<form action="Login" method="post" onsubmit=" return checkEmptyValues()">
    <div align="center">
        <label>UserName: <input type="text" id="userName"
                            name="userName"></label>
    </div>
    <br>
    <div align="center">
        <label>Password: <input type="text" id="password"
                                name="password"></label>
    </div>
<br>
    <div align="center">    <input type="submit" value="Login"></div>
</form>
</body>
</html>
