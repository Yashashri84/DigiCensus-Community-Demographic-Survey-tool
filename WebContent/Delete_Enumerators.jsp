<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.survey_tool.controller.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.DriverManager" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Enumerator</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap');

    body {
        font-family: 'Montserrat', Arial, sans-serif;
        background: linear-gradient(135deg, #d0f0f7 0%, #ffe3d3 100%);
        margin: 0;
        padding: 40px 20px;
        color: #154a4a;
    }

    h2 {
        font-weight: 700;
        font-size: 28px;
        text-align: center;
        color: #126b6b;
        text-shadow: 0 1px 1px #f9c8b8;
        margin-bottom: 35px;
    }

    form {
        text-align: center;
        margin-bottom: 30px;
    }

    form input[type="text"] {
        padding: 12px 16px;
        width: 250px;
        border: 2px solid #7bd1cb;
        border-radius: 8px;
        font-size: 15px;
        color: #154a4a;
        background-color: #c8f0f7;
        box-sizing: border-box;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    form input[type="text"]:focus {
        border-color: #ffa07a;
        box-shadow: 0 0 8px #ffa07a88;
        outline: none;
        background-color: #fff0e8;
    }

    form input[type="submit"] {
        padding: 12px 25px;
        background: linear-gradient(45deg, #ffa07a, #e46b42);
        border: none;
        color: white;
        font-weight: 700;
        font-size: 16px;
        border-radius: 10px;
        cursor: pointer;
        box-shadow: 0 6px 12px #e46b4299;
        transition: background 0.3s ease, transform 0.2s ease;
        letter-spacing: 1px;
        margin-left: 10px;
    }

    form input[type="submit"]:hover {
        background: linear-gradient(45deg, #e46b42, #ffa07a);
        transform: translateY(-3px);
    }

    table {
        width: 95%;
        max-width: 1000px;
        margin: 0 auto 50px;
        border-collapse: collapse;
        background-color: #ffffffdd;
        box-shadow: 0 12px 25px rgba(21, 74, 74, 0.15);
        border-radius: 12px;
        overflow: hidden;
        font-size: 15px;
    }

    table th, table td {
        padding: 14px 18px;
        border-bottom: 1px solid #b2dedc;
        text-align: center;
        color: #154a4a;
    }

    /* Darker teal header */
    table th {
        background-color: #126b6b;
        color: #fff;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    /* Special coral color for "Name" header */
    table th.name-col {
        background-color: #e46b42;
        color: #fff;
    }

    table tr:nth-child(even) {
        background-color: #d6f0f5;
    }

    table tr:hover {
        background-color: #ffe8dc;
    }

    a {
        color: #e46b42;
        font-weight: 600;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #b04829;
        text-decoration: underline;
    }

    /* Responsive for small screens */
    @media (max-width: 600px) {
        form input[type="text"] {
            width: 90%;
            margin-bottom: 15px;
        }
        form input[type="submit"] {
            width: 90%;
            margin-left: 0;
        }
        table {
            font-size: 13px;
        }
        table th, table td {
            padding: 10px 8px;
        }
    }
</style>
</head>
<body>

<form method="get" action="">
    <input type="text" name="search" placeholder="Search by title">
    <input type="submit" value="Search">
</form>

<%
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    con = DbConnection.connect();

    if (con == null) {
        out.println("<p style='text-align:center;color:red;'>Database connection failed.</p>");
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
        <th class="name-col">Name</th>
        <th>Zone</th>
        <th>Contact</th>
        <th>Email</th>
        <th>Password</th>
        <th>Action</th>
    </tr>

<%
    while(rs.next()){
%>
    <tr>
        <td><%=rs.getInt("enum_id")%></td>
        <td><%=rs.getString("enum_name")%></td>
        <td><%=rs.getString("enum_zone")%></td>
        <td><%=rs.getString("enum_contact")%></td>
        <td><%=rs.getString("enum_email")%></td>
        <td><%=rs.getString("enum_password")%></td>
        <td><a href="Delete.jsp?id=<%=rs.getInt("enum_id")%>">Delete</a></td>
    </tr>
<%
    }
%>
</table>

<%
    }
} catch (Exception e) {
    out.println("<p style='text-align:center;color:red;'>Error: " + e.getMessage() + "</p>");
    e.printStackTrace();
} finally {
    if (rs != null) try { rs.close(); } catch (Exception e) {}
    if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
    if (con != null) try { con.close(); } catch (Exception e) {}
}
%>

</body>
</html>
