<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Citizen Register</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap');

    body {
        font-family: 'Montserrat', Arial, sans-serif;
        background: linear-gradient(135deg, #f9d5e5 0%, #c3d9ff 100%);
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        color: #2c3e50;
    }

    center {
        background: #ffffffdd;
        padding: 40px 50px 50px;
        border-radius: 15px;
        box-shadow: 0 12px 25px rgba(44, 62, 80, 0.2);
        width: 400px;
        box-sizing: border-box;
        backdrop-filter: blur(8px);
    }

    h2 {
        font-weight: 700;
        font-size: 28px;
        margin-bottom: 35px;
        text-align: center;
        color: #34495e;
        text-shadow: 0 1px 1px #f7c6a3;
    }

    form {
        text-align: left;
    }

    label {
        font-weight: 600;
        font-size: 15px;
        margin-bottom: 8px;
        display: block;
        color: #34495e;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 12px 14px;
        margin-bottom: 22px;
        border: 2px solid #a9cce3;
        border-radius: 8px;
        font-size: 15px;
        font-weight: 400;
        color: #2c3e50;
        box-sizing: border-box;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
        background-color: #eaf4f9;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #f7b895;
        box-shadow: 0 0 8px #f7b895aa;
        outline: none;
        background-color: #fff3ea;
    }

    input[type="submit"] {
        width: 100%;
        background: linear-gradient(45deg, #6bb1ff, #004a99);
        color: white;
        border: none;
        padding: 14px;
        font-size: 17px;
        font-weight: 700;
        border-radius: 10px;
        cursor: pointer;
        box-shadow: 0 6px 12px #004a994d;
        transition: background 0.3s ease, transform 0.2s ease;
        letter-spacing: 1px;
        margin-top: 10px;
    }

    input[type="submit"]:hover {
        background: linear-gradient(45deg, #004a99, #6bb1ff);
        transform: translateY(-3px);
    }

    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #34495e;
        font-weight: 600;
        text-decoration: none;
        font-size: 14px;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<center>
<h2>Welcome to Citizen Registration</h2>
<form action="Citizen_Register_Servlet" method="post">
    <label>Name</label>
    <input type="text" name="c_name" placeholder="Name" required>

    <label>Age</label>
    <input type="text" name="c_age" placeholder="Age" required>

    <label>Gender</label>
    <input type="text" name="c_gender" placeholder="Gender" required>

    <label>Address</label>
    <input type="text" name="c_address" placeholder="Address" required>

    <label>Contact</label>
    <input type="text" name="c_contact" placeholder="Contact" required>

    <label>Email</label>
    <input type="text" name="c_email" placeholder="Email" required>

    <label>Password</label>
    <input type="password" name="c_password" placeholder="Password" required>

    <input type="submit" value="Register">

    <a href="Citizen_Login.jsp">Login here</a>
</form>
</center>
</body>
</html>

