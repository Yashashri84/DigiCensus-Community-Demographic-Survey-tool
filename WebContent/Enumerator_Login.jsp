<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Enumerator Login</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap');

  body {
    font-family: 'Montserrat', Arial, sans-serif;
    background: linear-gradient(135deg, #f7f1e1 0%, #f9cbbd 100%);
    margin: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #4a3c31;
  }

  center {
    background: #fff8f3dd;
    padding: 40px 50px 50px;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(164, 123, 103, 0.3);
    width: 320px;
    box-sizing: border-box;
    backdrop-filter: blur(6px);
  }

  h2 {
    font-weight: 700;
    font-size: 26px;
    margin-bottom: 35px;
    text-align: center;
    color: #7b4e3a;
    text-shadow: 0 1px 1px #f9d3c0;
  }

  form {
    text-align: left;
  }

  label {
    font-weight: 600;
    font-size: 14px;
    margin-bottom: 8px;
    display: block;
    color: #6e4b3a;
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 12px 14px;
    margin-bottom: 20px;
    border: 2px solid #e8b59b;
    border-radius: 8px;
    font-size: 15px;
    color: #5a3f2c;
    background-color: #fef7f1;
    box-sizing: border-box;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
  }

  input[type="text"]:focus,
  input[type="password"]:focus {
    border-color: #d97657;
    box-shadow: 0 0 8px #d9765799;
    outline: none;
    background-color: #fff2eb;
  }

  input[type="submit"] {
    width: 100%;
    background: linear-gradient(45deg, #d97657, #f9a27e);
    color: white;
    border: none;
    padding: 14px;
    font-size: 16px;
    font-weight: 700;
    border-radius: 10px;
    cursor: pointer;
    box-shadow: 0 5px 12px #f9a27eaa;
    transition: background 0.3s ease, transform 0.2s ease;
    letter-spacing: 1px;
  }

  input[type="submit"]:hover {
    background: linear-gradient(45deg, #f9a27e, #d97657);
    transform: translateY(-3px);
  }

  a {
    display: block;
    text-align: center;
    margin-top: 18px;
    color: #d97657;
    font-weight: 600;
    text-decoration: none;
    transition: color 0.3s ease;
  }

  a:hover {
    color: #a04b31;
    text-decoration: underline;
  }
</style>
</head>
<body>
<center>
<h2>Welcome to Enumerator Login</h2>
<form action="Enumerator_Login_Servlet" method="post">

<label>Username</label>
<input type="text" name="enum_email" placeholder="Username" required>

<label>Password</label>
<input type="password" name="enum_password" placeholder="Password" required>

<input type="submit" value="Login">

<a href="Enumerator_Register.jsp">Register here</a>

</form>
</center>
</body>
</html>
