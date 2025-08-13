<%@ page import="java.sql.*" %>
<%@ page import="com.survey_tool.controller.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Survey Data</title>
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
            width: 95%;
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
        p.error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Survey Data Records</h2>
    <%
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            con = DbConnection.connect();
            if (con == null) {
    %>
        <p class="error">Database connection failed.</p>
    <%
            } else {
                stmt = con.createStatement();
                rs = stmt.executeQuery("SELECT * FROM survey_data");
                boolean hasData = false;
    %>
    <table>
        <tr>
            <th>ID</th>
            <th>Enumerator ID</th>
            <th>Citizen ID</th>
            <th>Household Size</th>
            <th>Income Level</th>
            <th>Education Level</th>
            <th>Survey Date</th>
        </tr>
    <%
                while(rs.next()) {
                    hasData = true;
    %>
        <tr>
            <td><%= rs.getInt("s_id") %></td>
            <td><%= rs.getInt("enum_id") %></td>
            <td><%= rs.getInt("c_id") %></td>
            <td><%= rs.getInt("householdSize") %></td>
            <td><%= rs.getString("incomeLevel") %></td>
            <td><%= rs.getString("educationLevel") %></td>
            <td><%= rs.getString("survey_Date") %></td>
        </tr>
    <%
                }
                if (!hasData) {
    %>
        <tr>
            <td colspan="7">No survey data found.</td>
        </tr>
    <%
                }
    %>
    </table>
    <%
            }
        } catch(Exception e) {
    %>
        <p class="error">Error: <%= e.getMessage() %></p>
    <%
        } finally {
            if(rs != null) try { rs.close(); } catch(Exception e) {}
            if(stmt != null) try { stmt.close(); } catch(Exception e) {}
            if(con != null) try { con.close(); } catch(Exception e) {}
        }
    %>
</body>
</html>
