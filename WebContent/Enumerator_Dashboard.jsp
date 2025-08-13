<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enumerator Dashboard</title>
<style>
    /* Reset and base */
    * {
        box-sizing: border-box;
    }
    body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #e0f7fa; /* Light aquatic blue */
        height: 100vh;
        display: flex;
        flex-direction: column;
    }

    /* Top navigation bar */
    .topnav {
        background-color: #80cbc4; /* light teal */
        color: white;
        padding: 15px 30px;
        font-size: 22px;
        font-weight: bold;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        flex-shrink: 0;
    }

    /* Sidebar styles */
    .sidebar {
        width: 220px;
        background-color: #ffffff;
        border-right: 2px solid #4db6ac;
        padding-top: 20px;
        display: flex;
        flex-direction: column;
        flex-shrink: 0;
        height: calc(100vh - 60px); /* full height minus topnav */
        position: fixed;
        top: 60px;
        left: 0;
        box-shadow: 2px 0 5px rgba(0,0,0,0.05);
    }
    .sidebar a {
        padding: 14px 25px;
        text-decoration: none;
        font-weight: 600;
        color: #00796b;
        border-left: 4px solid transparent;
        transition: background-color 0.3s, border-color 0.3s;
    }
    .sidebar a:hover {
        background-color: #a7ffeb;
        border-left: 4px solid #00796b;
        color: #004d40;
    }
    .sidebar a.active {
        background-color: #4db6ac;
        color: white;
        border-left: 4px solid #00796b;
    }

    /* Main content area */
    .main-content {
        margin-left: 220px;
        padding: 40px 30px;
        flex-grow: 1;
        overflow-y: auto;
    }

    .dashboard-panel {
        background-color: #ffffff;
        max-width: 450px;
        margin: 0 auto;
        padding: 30px 35px;
        border-radius: 12px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
        text-align: center;
        font-weight: 600;
        font-size: 16px;
    }
    .dashboard-panel a {
        display: block;
        background-color: #a7ffeb;  /* very light teal */
        color: #00796b;
        padding: 14px 0;
        margin: 12px 0;
        border-radius: 8px;
        text-decoration: none;
        border: 1.5px solid #4db6ac;
        transition: background-color 0.3s ease, color 0.3s ease, transform 0.2s ease;
        box-shadow: 0 2px 5px rgba(77,182,172,0.3);
    }
    .dashboard-panel a:hover {
        background-color: #4db6ac;  /* stronger teal */
        color: white;
        transform: scale(1.04);
        box-shadow: 0 4px 12px rgba(77,182,172,0.5);
    }
    .dashboard-panel a.button {
        background-color: #80cbc4;
        border-color: #00796b;
        font-weight: bold;
    }
    .dashboard-panel a.button:hover {
        background-color: #00796b;
        color: white;
        box-shadow: 0 6px 14px rgba(0,121,107,0.6);
        transform: scale(1.06);
    }
</style>
</head>
<body>

<div class="topnav">Enumerator Dashboard</div>

<div class="sidebar">
   
    <a href="Conduct_Surveys.jsp">Conduct Survey</a>
    <a href="Submit_Data.jsp">Submit Data</a>
    <a href="Enumerator_Change_Password.jsp">Change Password</a>
    <a href="Enumerator_Logout.jsp" class="button">Logout</a>
</div>

<div class="main-content">
    <h2 style="color:#00796b; text-align:center; margin-bottom: 30px;">Welcome to Enumerator Dashboard</h2>
    <div class="dashboard-panel">
        <form>
            
            <a href="Conduct_Surveys.jsp">Conduct Survey</a>
            <a href="Submit_Data.jsp">Submit data</a>
            <a href="Enumerator_Change_Password.jsp">Change password</a>
            <a href="Enumerator_Logout.jsp" class="button">Logout</a>
        </form>
    </div>
</div>

</body>
</html>
