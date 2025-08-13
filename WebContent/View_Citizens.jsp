<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.survey_tool.controller.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Citizens</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #00796b;
            margin-bottom: 20px;
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

<h2>Citizen Records</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Age</th>
        <th>Contact</th>
        <th>Address</th>
    </tr>

<%
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    con = DbConnection.connect();

    if (con != null) {
        pstmt = con.prepareStatement("SELECT * FROM citizens");
        rs = pstmt.executeQuery();

        while (rs.next()) {
%>
    <tr>
        <td><%=rs.getInt("c_id")%></td>
        <td><%=rs.getString("c_name")%></td>
        <td><%=rs.getString("c_gender")%></td>
        <td><%=rs.getInt("c_age")%></td>
        <td><%=rs.getString("c_contact")%></td>
        <td><%=rs.getString("c_address")%></td>
    </tr>
<%
        }
    } else {
        out.println("<p style='color:red;text-align:center;'>Database connection failed.</p>");
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

</table>

</body>
</html>
