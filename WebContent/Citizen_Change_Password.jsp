<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap');

    body {
        font-family: 'Montserrat', Arial, sans-serif;
        background: linear-gradient(135deg, #f9d5e5 0%, #c3d9ff 100%);
        margin: 0;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        color: #2c3e50;
    }

    center {
        background: #ffffffdd;
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0 12px 25px rgba(44, 62, 80, 0.2);
        width: 400px;
        box-sizing: border-box;
        backdrop-filter: blur(8px);
    }

    h2 {
        font-weight: 700;
        font-size: 28px;
        margin-bottom: 30px;
        text-align: center;
        color: #34495e;
        text-shadow: 0 1px 1px #f7c6a3;
    }

    form {
        width: 100%;
    }

    table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 15px;
    }

    td {
        padding: 10px 10px;
        vertical-align: middle;
        font-weight: 600;
        color: #34495e;
        width: 45%;
    }

    input[type="password"] {
        width: 100%;
        padding: 10px 14px;
        border: 2px solid #a9cce3;
        border-radius: 8px;
        font-size: 15px;
        font-weight: 400;
        color: #2c3e50;
        box-sizing: border-box;
        background-color: #eaf4f9;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    input[type="password"]:focus {
        border-color: #f7b895;
        box-shadow: 0 0 8px #f7b895aa;
        outline: none;
        background-color: #fff3ea;
    }

    input[type="submit"] {
        width: 70%;
        display: block;
        margin: 25px auto 0;
        background: linear-gradient(45deg, #4a90e2, #003d99);
        color: white;
        border: none;
        padding: 14px 0;
        font-size: 17px;
        font-weight: 700;
        border-radius: 10px;
        cursor: pointer;
        box-shadow: 0 6px 12px rgba(0, 61, 153, 0.7);
        transition: background 0.3s ease, transform 0.2s ease;
        letter-spacing: 1px;
    }

    input[type="submit"]:hover {
        background: linear-gradient(45deg, #003d99, #4a90e2);
        transform: translateY(-3px);
    }
</style>
</head>
<body>
<center>
<h2>Change Your Password</h2>

<form action="Citizen_Change_Password_Servlet" method="post">
    <table>
        <tr>
            <td>Old Password:</td>
            <td><input type="password" name="oldPassword" required></td>
        </tr>
        <tr>
            <td>New Password:</td>
            <td><input type="password" name="newPassword" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Change Password"></td>
        </tr>
    </table>
</form>
</center>

</body>
</html>
