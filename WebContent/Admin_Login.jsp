<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Admin Login</title>
<!-- Font Awesome CDN for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #e0f7fa;
    }
    .login-container {
        background-color: #ffffff;
        width: 350px;
        margin: 80px auto;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }
    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(-20px);}
        to {opacity: 1; transform: translateY(0);}
    }
    .login-container h2 {
        margin-top: 0;
        color: #00796b;
    }
    .input-group {
        position: relative;
        margin: 20px 0;
    }
    .input-group input {
        width: 90%;
        padding: 10px 10px 10px 35px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        transition: border-color 0.3s;
    }
    .input-group i {
        position: absolute;
        top: 50%;
        left: 10px;
        transform: translateY(-50%);
        color: #00796b;
    }
    .input-group input:focus {
        border-color: #00796b;
        outline: none;
    }
    .input-group input::placeholder {
        color: #999;
    }
    input[type="submit"] {
        width: 95%;
        padding: 10px;
        background-color: #4db6ac;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 4px;
        margin-top: 10px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
    }
    input[type="submit"]:hover {
        background-color: #00897b;
        transform: scale(1.02);
    }
    a {
        display: inline-block;
        margin-top: 15px;
        color: #00796b;
        text-decoration: none;
        font-size: 14px;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="login-container">
    <h2>Welcome to Admin Login</h2>
    <form action="Admin_Login_Servlet" method="post">
        <div class="input-group">
            <i class="fa fa-user"></i>
            <input type="text" name="email" placeholder="Username">
        </div>
        <div class="input-group">
            <i class="fa fa-lock"></i>
            <input type="password" name="password" placeholder="Password">
        </div>
        <input type="submit" value="Login">
        <br>
        <a href="Admin_Dashboard.jsp">Admin Dashboard</a>
    </form>
</div>
</body>
</html>
