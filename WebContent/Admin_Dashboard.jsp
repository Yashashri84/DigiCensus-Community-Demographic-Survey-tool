<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #e0f7fa;
        background-image: url('https://www.transparenttextures.com/patterns/white-wall-3.png');
    }
    .sidebar {
        position: fixed;
        top: 0;
        left: 0;
        width: 220px;
        height: 100%;
        background-color: #4db6ac;
        background-image: url('https://www.transparenttextures.com/patterns/geometry2.png');
        padding-top: 20px;
        box-shadow: 2px 0 5px rgba(0,0,0,0.2);
    }
    .sidebar h2 {
        color: white;
        text-align: center;
        margin-bottom: 30px;
    }
    .sidebar a {
        display: block;
        color: white;
        padding: 12px 20px;
        text-decoration: none;
        transition: background-color 0.3s;
    }
    .sidebar a:hover {
        background-color: #00897b;
    }
    .logout {
        background-color: #f06292;
    }
    .logout:hover {
        background-color: #ec407a;
    }
    .main-content {
        margin-left: 220px;
        padding: 20px;
    }
    .main-content h2 {
        color: #00796b;
    }
</style>
</head>
<body>
<div class="sidebar">
    <h2>Admin Panel</h2>
    
    <a href="Add_Enumerator.jsp">Add Enumerator</a>
    <a href="View_Enumerators.jsp">View Enumerators</a>
    <a href="Delete_Enumerators.jsp">Delete Enumerator</a>
    <a href="View_Citizens.jsp">View Citizens</a>
    <a href="View_Survey_Data.jsp">View Survey Data</a>
    <a href="Admin_Logout.jsp" class="logout">Logout</a>
</div>
<div class="main-content">
    <h2>Welcome to Admin Dashboard</h2>
    <p>Select an option from the sidebar to proceed.</p>
</div>
</body>
</html>
