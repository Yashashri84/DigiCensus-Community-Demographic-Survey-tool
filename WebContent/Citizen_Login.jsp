<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Citizen Login</title>
<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #cce2ff, #e0c3fc);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-container {
        background: #ffffffee;
        padding: 40px 50px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        width: 350px;
        box-sizing: border-box;
    }

    h2 {
        text-align: center;
        color: #34495e;
        margin-bottom: 30px;
        font-size: 24px;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    label {
        font-weight: 600;
        color: #2c3e50;
        margin-bottom: 6px;
        font-size: 14px;
    }

    input[type="text"],
    input[type="password"] {
        padding: 12px;
        border: 1.8px solid #a9cce3;
        border-radius: 6px;
        font-size: 14px;
        margin-bottom: 18px;
        background-color: #eaf4f9;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #8ab6d6;
        outline: none;
        background-color: #fff;
    }

    input[type="submit"] {
        background: linear-gradient(45deg, #8ab6d6, #6c5ce7);
        color: white;
        border: none;
        padding: 12px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.2s ease;
    }

    input[type="submit"]:hover {
        background: linear-gradient(45deg, #6c5ce7, #8ab6d6);
        transform: translateY(-2px);
    }

    a {
        text-align: center;
        display: block;
        margin-top: 20px;
        color: #6c5ce7;
        text-decoration: none;
        font-weight: 500;
        font-size: 14px;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="login-container">
    <h2>Citizen Login</h2>
    <form action="Citizen_Login_Servlet" method="post">
        <label>Username</label>
        <input type="text" name="c_email" placeholder="Username" required>

        <label>Password</label>
        <input type="password" name="c_password" placeholder="Password" required>

        <input type="submit" value="Login">

        <a href="Citizen_Register.jsp">Register</a>
    </form>
</div>
</body>
</html>
