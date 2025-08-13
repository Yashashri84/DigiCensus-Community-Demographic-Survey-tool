<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard Panel</title>
<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f5f7fa;
        transition: margin-left 0.3s ease;
    }
    .sidebar {
        height: 100vh;
        width: 220px;
        position: fixed;
        top: 50px;
        left: 0;
        background-color: #4a5568;
        padding-top: 20px;
        box-shadow: 3px 0 7px rgba(0, 0, 0, 0.1);
        overflow-y: auto;
        transition: transform 0.3s ease;
    }
    .sidebar.hide {
        transform: translateX(-100%);
    }
    .sidebar h2 {
        color: #f87171;
        text-align: center;
        margin-bottom: 30px;
        font-weight: 700;
        letter-spacing: 1.2px;
    }
    .sidebar a {
        display: block;
        color: #e2e8f0;
        padding: 12px 20px;
        text-decoration: none;
        font-size: 16px;
        transition: all 0.3s ease;
        border-left: 5px solid transparent;
    }
    .sidebar a:hover {
        background-color: #718096;
        padding-left: 25px;
        border-left: 5px solid #f87171;
        color: #fff;
    }
    .navbar {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        height: 50px;
        background-color: #2d3748;
        color: #f87171;
        display: flex;
        align-items: center;
        padding: 0 20px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.15);
        z-index: 1000;
    }
    .navbar .toggle-btn {
        cursor: pointer;
        font-size: 24px;
        user-select: none;
        margin-right: 20px;
        color: #f87171;
        background: none;
        border: none;
    }
    .navbar h1 {
        margin: 0;
        font-size: 20px;
        font-weight: 600;
    }
    .main-content {
        margin-left: 220px;
        padding: 30px;
        padding-top: 80px;
        transition: margin-left 0.3s ease;
        color: #2d3748;
    }
    .main-content.expanded {
        margin-left: 0;
    }
    .main-content h1 {
        font-size: 24px;
        margin-bottom: 20px;
    }
    .main-content h2.slogan {
        font-size: 28px;
        text-align: center;
        background: linear-gradient(90deg, #f87171, #ffb347);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        font-weight: 700;
        letter-spacing: 1px;
        margin: 30px 0;
        opacity: 0;
        animation: fadeIn 2s forwards;
    }
    @keyframes fadeIn {
        to {
            opacity: 1;
        }
    }
    .main-content p {
        font-size: 16px;
    }
    @media (max-width: 768px) {
        .sidebar {
            top: 50px;
            width: 180px;
        }
        .main-content {
            margin-left: 180px;
        }
        .main-content.expanded {
            margin-left: 0;
        }
    }
</style>
</head>
<body>

<div class="navbar">
    <button class="toggle-btn" id="toggleBtn">&#9776;</button>
    <h1>Dashboard Panel</h1>
</div>

<div class="sidebar" id="sidebar">
    <h2> Dashboard Panel</h2>
    <a href="Admin_Login.jsp">Admin </a>
    <a href="Enumerator_Login.jsp">Enumerator </a>
    <a href="Citizen_Login.jsp">Citizen </a>
</div>

<div class="main-content" id="mainContent">
    <h1>Welcome to Digicensus Community Demographic Survey</h1>
    <h2 class="slogan">Data That Connects. Communities That Grow.</h2>
    <img 
        src="https://cdnsm5-ss16.sharpschool.com/UserFiles/Servers/Server_16522437/Image/News/2024-25/community%20survey.png"
        alt="Community Survey"
        style="
            display: block;
            margin: 30px auto;
            width: 90%;
            max-width: 900px;
            height: 300px;
            object-fit: contain;
            border-radius: 8px;
            box-shadow: 0 3px 6px rgba(0,0,0,0.1);
        ">
</div>

<script>
    const toggleBtn = document.getElementById('toggleBtn');
    const sidebar = document.getElementById('sidebar');
    const mainContent = document.getElementById('mainContent');
    toggleBtn.addEventListener('click', () => {
        sidebar.classList.toggle('hide');
        mainContent.classList.toggle('expanded');
    });
</script>

</body>
</html>
