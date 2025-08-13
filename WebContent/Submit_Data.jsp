<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit Survey Data</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap');

    body {
        font-family: 'Montserrat', Arial, sans-serif;
        background: linear-gradient(135deg, #cde7f0 0%, #ffd8c3 100%);
        margin: 0;
        height: 100vh;
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
        width: 440px;
        box-sizing: border-box;
        backdrop-filter: blur(8px);
    }

    h2 {
        font-weight: 700;
        font-size: 24px;
        margin-bottom: 30px;
        text-align: center;
        color: #34495e;
        text-shadow: 0 1px 1px #f7c6a3;
    }

    table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 15px;
    }

    td {
        font-weight: 600;
        font-size: 15px;
        padding: 6px 5px;
        color: #34495e;
    }

    input[type="text"],
    input[type="date"] {
        width: 100%;
        padding: 10px 12px;
        border: 2px solid #a9cce3;
        border-radius: 8px;
        font-size: 14px;
        color: #2c3e50;
        background-color: #eaf4f9;
        box-sizing: border-box;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="date"]:focus {
        border-color: #f7b895;
        box-shadow: 0 0 8px #f7b895aa;
        outline: none;
        background-color: #fff3ea;
    }

    input[type="submit"] {
        width: 100%;
        background: linear-gradient(45deg, #f7b895, #e67e22);
        color: white;
        border: none;
        padding: 12px;
        font-size: 16px;
        font-weight: 700;
        border-radius: 10px;
        cursor: pointer;
        box-shadow: 0 6px 12px #e67e2299;
        transition: background 0.3s ease, transform 0.2s ease;
        letter-spacing: 0.5px;
    }

    input[type="submit"]:hover {
        background: linear-gradient(45deg, #e67e22, #f7b895);
        transform: translateY(-3px);
    }
</style>
</head>
<body>
<center>
<h2>Submit Survey Data for Citizen</h2>

<form action="Submit_Survey_Enumerator_Servlet" method="post">
    <table>
        <tr>
            <td>Citizen ID:</td>
            <td><input type="text" name="c_id" required></td>
        </tr>
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
            <td><input type="date" name="survey_Date" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Submit Survey Data">
            </td>
        </tr>
    </table>
</form>
</center>
</body>
</html>
