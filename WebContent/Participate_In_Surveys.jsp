<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Participate in Survey</title>
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

    form {
        text-align: left;
        font-size: 15px;
        color: #34495e;
    }

    table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 15px;
    }

    td:first-child {
        font-weight: 600;
        padding-right: 15px;
        vertical-align: middle;
        width: 40%;
    }

    td:last-child input[type="text"] {
        width: 100%;
        padding: 12px 14px;
        border: 2px solid #a9cce3;
        border-radius: 8px;
        font-size: 15px;
        font-weight: 400;
        color: #2c3e50;
        background-color: #eaf4f9;
        box-sizing: border-box;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    td:last-child input[type="text"]:focus {
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
</style>
</head>
<body>
<center>
<h2>Participate in Survey</h2>
<form action="Participate_Survey_Servlet" method="post">
    <table>
        <tr>
            <td>Household Size:</td>
            <td><input type="text" name="householdSize" required></td>
        </tr>
        <tr>
            <td>Income Level:</td>
            <td><input type="text" name="incomeLevel" required></td>
        </tr>
        <tr>
            <td>Education Level:</td>
            <td><input type="text" name="educationLevel" required></td>
        </tr>
        <tr>
            <td>Survey Date:</td>
            <td><input type="text" name="survey_Date" required></td>
        </tr>
        
        <tr>
             <td>Citizen ID:</td>
             <td><input type="text" name="c_id" required></td>
        </tr>
        
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Submit Survey"></td>
        </tr>
    </table>
</form>
</center>
</body>
</html>
