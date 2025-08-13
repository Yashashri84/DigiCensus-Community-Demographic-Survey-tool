<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Citizen Dashboard</title>
<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #cce2ff, #e0c3fc);
        height: 100vh;
        display: flex;
    }

    .sidebar {
        width: 220px;
        background: #34495e;
        color: #ecf0f1;
        display: flex;
        flex-direction: column;
        padding-top: 30px;
        box-shadow: 2px 0 5px rgba(0,0,0,0.2);
    }

    .sidebar h2 {
        text-align: center;
        margin-bottom: 30px;
        font-size: 20px;
        color: #ecf0f1;
    }

    .sidebar a {
        display: block;
        color: #ecf0f1;
        text-decoration: none;
        padding: 12px 20px;
        transition: background 0.3s;
        font-weight: 500;
    }

    .sidebar a:hover {
        background: #2c3e50;
    }

    .content {
        flex: 1;
        padding: 40px;
        color: #2c3e50;
    }

    .content h1 {
        font-size: 28px;
        margin-bottom: 20px;
    }
</style>
</head>
<body>

<div class="sidebar">
    <h2>Citizen Dashboard</h2>
    
    
    <a href="Participate_In_Surveys.jsp">Participate in Surveys</a>
    <a href="View_Submitted_Data.jsp">View Submitted Data</a>
    <a href="Citizen_Change_Password.jsp">Change Password</a>
    <a href="Citizen_Logout.jsp">Logout</a>
</div>

<div class="content">
    <h1>Welcome to the Citizen Dashboard</h1>
    <p>Select an option from the sidebar to get started.</p>
</div>

</body>
</html>

