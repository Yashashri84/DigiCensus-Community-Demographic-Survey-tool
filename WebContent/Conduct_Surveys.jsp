<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Conduct Surveys</title>
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
        padding: 40px 50px 50px;
        border-radius: 15px;
        box-shadow: 0 12px 25px rgba(44, 62, 80, 0.2);
        width: 380px;
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
        position: relative;
        padding-left: 25px;
    }

    /* Icons using Unicode emojis */
    label[for="c_id"]::before {
        content: "\1F464";
        position: absolute;
        left: 0;
        top: 0;
        font-size: 18px;
        color: #34495e;
    }

    label[for="householdSize"]::before {
        content: "\1F46A";
        position: absolute;
        left: 0;
        top: 0;
        font-size: 18px;
        color: #34495e;
    }

    label[for="incomeLevel"]::before {
        content: "\1F4B0";
        position: absolute;
        left: 0;
        top: 0;
        font-size: 18px;
        color: #34495e;
    }

    label[for="educationLevel"]::before {
        content: "\1F393";
        position: absolute;
        left: 0;
        top: 0;
        font-size: 18px;
        color: #34495e;
    }

    label[for="survey_Date"]::before {
        content: "\1F4C5";
        position: absolute;
        left: 0;
        top: 0;
        font-size: 18px;
        color: #34495e;
    }

    input[type="text"] {
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

    input[type="text"]:focus {
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
        padding: 14px;
        font-size: 17px;
        font-weight: 700;
        border-radius: 10px;
        cursor: pointer;
        box-shadow: 0 6px 12px #e67e2299;
        transition: background 0.3s ease, transform 0.2s ease;
        letter-spacing: 1px;
    }

    input[type="submit"]:hover {
        background: linear-gradient(45deg, #e67e22, #f7b895);
        transform: translateY(-3px);
    }
</style>
</head>
<body>
<center>
<h2>Conduct Surveys</h2>
<form action="Conduct_Surveys_Servlet" method="post">
    <label for="c_id">Citizen ID:</label>
    <input type="text" id="c_id" name="c_id" required>

    <label for="householdSize">Household Size:</label>
    <input type="text" id="householdSize" name="householdSize" required>

    <label for="incomeLevel">Income Level:</label>
    <input type="text" id="incomeLevel" name="incomeLevel" required>

    <label for="educationLevel">Education Level:</label>
    <input type="text" id="educationLevel" name="educationLevel" required>

    <label for="survey_Date">Survey Date:</label>
    <input type="text" id="survey_Date" name="survey_Date" required>

    <input type="submit" value="Submit Survey">
</form>
</center>
</body>
</html>



