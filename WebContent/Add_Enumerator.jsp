<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enumerator Registration</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #e0f7fa;
    }
    .register-container {
        background-color: #ffffff;
        width: 400px;
        margin: 50px auto;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeIn 0.8s ease-in-out;
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px);}
        to { opacity: 1; transform: translateY(0);}
    }
    .register-container h2 {
        margin-top: 0;
        color: #00796b;
    }
    .register-container label {
        display: block;
        margin: 15px 0 5px;
        color: #00796b;
        font-weight: bold;
        text-align: left;
    }
    .register-container input[type="text"],
    .register-container input[type="password"] {
        width: 95%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        transition: border-color 0.3s;
    }
    .register-container input[type="text"]:focus,
    .register-container input[type="password"]:focus {
        border-color: #00796b;
        outline: none;
    }
    .register-container input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #4db6ac;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 4px;
        margin-top: 20px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
        text-transform: capitalize;
    }
    .register-container input[type="submit"]:hover {
        background-color: #00897b;
        transform: scale(1.02);
    }
    .register-container a {
        display: inline-block;
        margin-top: 15px;
        color: #00796b;
        text-decoration: none;
        font-size: 14px;
    }
    .register-container a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="register-container">
    <h2>Welcome to Enumerator Registration</h2>
    <form action="Add_Enumerators_Servlet" method="post">
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

        <input type="submit" value="Add Enumerator">

        <br>
        <a href="Admin_Dashboard.jsp">Back to Dashboard</a>
    </form>
</div>
</body>
</html>
