<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.survey_tool.controller.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.DriverManager" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reminder Search</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e0f7fa;
        margin: 0;
        padding: 20px;
    }
    h2 {
        color: #00796b;
        text-align: center;
    }
    form {
        text-align: center;
        margin-bottom: 30px;
    }
    form input[type="text"] {
        padding: 8px;
        width: 250px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        transition: border-color 0.3s;
    }
    form input[type="text"]:focus {
        border-color: #00796b;
        outline: none;
    }
    form input[type="submit"] {
        padding: 9px 16px;
        background-color: #4db6ac;
        border: none;
        color: white;
        font-size: 14px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
        margin-left: 5px;
    }
    form input[type="submit"]:hover {
        background-color: #00897b;
    }
    table {
        width: 90%;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    table th, table td {
        padding: 12px 15px;
        border: 1px solid #ccc;
        text-align: center;
        font-size: 14px;
    }
    table th {
        background-color: #00796b;
        color: white;
    }
    table tr:nth-child(even) {
        background-color: #f1f1f1;
    }
    table tr:hover {
        background-color: #e0f2f1;
    }
</style>
</head>
<body>

<form method="get" action="">
    <input type="text" name="search" placeholder="Search by name">
    <input type="submit" value="Search">
</form>

<%
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    con = DbConnection.connect();

    if (con == null) {
        out.println("<p style='color:red;text-align:center;'>Database connection failed.</p>");
    } else {
        String searchValue = request.getParameter("search");

        if (searchValue != null && !searchValue.trim().isEmpty()) {
            pstmt = con.prepareStatement("SELECT * FROM enumerators WHERE enum_name LIKE ?");
            pstmt.setString(1, "%" + searchValue + "%");
        } else {
            pstmt = con.prepareStatement("SELECT * FROM enumerators");
        }

        rs = pstmt.executeQuery();
%>
        <h2>View Enumerators</h2>

        <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Zone</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Password</th>
        </tr>

        <%
        while(rs.next()){
        %>
        <tr>
            <td><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
        </tr>
        <%
        }
        %>
        </table>
<%
    }
} catch (Exception e) {
    out.println("<p style='color:red;text-align:center;'>Error: " + e.getMessage() + "</p>");
    e.printStackTrace();
} finally {
    if (rs != null) try { rs.close(); } catch (Exception e) {}
    if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
    if (con != null) try { con.close(); } catch (Exception e) {}
}
%>

</body>
</html>
