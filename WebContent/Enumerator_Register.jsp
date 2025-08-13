<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enumerator Register</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #d6e4ff 0%, #ffd6e8 100%);
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        color: #3a3a4a;
    }

    center {
        background: #ffffff;
        padding: 45px 55px;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(204, 224, 255, 0.4);
        width: 400px;
        box-sizing: border-box;
        text-align: center;
    }

    h2 {
        font-weight: 700;
        font-size: 30px;
        color: #d85c7a;
        margin-bottom: 30px;
        letter-spacing: 1.2px;
        text-shadow: 0 2px 5px rgba(216, 92, 122, 0.25);
    }

    form {
        text-align: left;
    }

    label {
        display: block;
        font-weight: 600;
        color: #6a5d7b;
        margin-bottom: 6px;
        font-size: 15px;
        letter-spacing: 0.5px;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 12px 15px;
        margin-bottom: 20px;
        border: 1.5px solid #d1c4e9;
        border-radius: 12px;
        font-size: 15px;
        color: #4b4a67;
        background-color: #f0e6f7; /* Light purple background for inputs */
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
        box-sizing: border-box;
        font-weight: 400;
        letter-spacing: 0.3px;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #d85c7a;
        box-shadow: 0 0 8px #d85c7aaa;
        outline: none;
        background-color: #fdeef6; /* Light pink on focus */
    }

    input[type="submit"] {
        width: 100%;
        background: linear-gradient(45deg, #d85c7a, #6a82a7);
        color: white;
        border: none;
        padding: 15px;
        font-size: 17px;
        font-weight: 700;
        border-radius: 14px;
        cursor: pointer;
        box-shadow: 0 8px 20px #6a82a780;
        transition: background 0.3s ease, transform 0.2s ease;
        letter-spacing: 1.3px;
    }

    input[type="submit"]:hover {
        background: linear-gradient(45deg, #6a82a7, #d85c7a);
        transform: translateY(-3px);
    }

    a {
        display: block;
        text-align: center;
        margin-top: 22px;
        color: #6a82a7;
        font-weight: 600;
        text-decoration: none;
        font-size: 14px;
        transition: color 0.3s ease;
        letter-spacing: 0.5px;
    }

    a:hover {
        color: #d85c7a;
        text-decoration: underline;
    }
</style>
</head>
<body>
<center>
<h2>Welcome to Enumerator Registration</h2>
<form action="Enumerators_Register_Servlet" method="post">
    <label>Name</label>
    <input type="text" name="enum_name" placeholder="Name" required>

    <label>Zone</label>
    <input type="text" name="enum_zone" placeholder="Zone" required>

    <label>Contact</label>
    <input type="text" name="enum_contact" placeholder="Contact" required>

    <label>Email</label>
    <input type="text" name="enum_email" placeholder="Email" required>

    <label>Password</label>
    <input type="password" name="enum_password" placeholder="Password" required>

    <input type="submit" value="Register">

    <a href="Enumerator_Login.jsp">Login</a>
</form>
</center>
</body>
</html>


