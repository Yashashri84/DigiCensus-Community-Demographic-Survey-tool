<%@ page import="java.sql.*" %>
<%@ page import="com.survey_tool.controller.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Submitted Data</title>
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
        form {
            text-align: center;
            margin-bottom: 30px;
        }
        input[type="text"] {
            padding: 8px;
            font-size: 16px;
            margin-right: 10px;
        }
        input[type="submit"] {
            padding: 8px 16px;
            font-size: 16px;
            background-color: #00796b;
            color: white;
            border: none;
            cursor: pointer;
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
    <h2>View Your Submitted Survey Data</h2>

    <form method="get">
        <label for="c_id">Enter Your Citizen ID: </label>
        <input type="text" name="c_id" id="c_id" required />
        <input type="submit" value="View Data" />
    </form>

<%
    String cidParam = request.getParameter("c_id");
    if (cidParam != null && !cidParam.trim().isEmpty()) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            int c_id = Integer.parseInt(cidParam);
            con = DbConnection.connect();

            if (con == null) {
%>
                <p class="error">Database connection failed.</p>
<%
            } else {
                ps = con.prepareStatement("SELECT * FROM survey_data WHERE c_id = ?");
                ps.setInt(1, c_id);
                rs = ps.executeQuery();

                boolean hasData = false;
%>
                <table>
                    <tr>
                        <th>Survey ID</th>
                        <th>Enumerator ID</th>
                        <th>Citizen ID</th>
                        <th>Household Size</th>
                        <th>Income Level</th>
                        <th>Education Level</th>
                        <th>Survey Date</th>
                    </tr>
<%
                while (rs.next()) {
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
                        <td colspan="7">No data found for Citizen ID: <%= c_id %></td>
                    </tr>
<%
                }
%>
                </table>
<%
            }
        } catch (NumberFormatException e) {
%>
            <p class="error">Invalid Citizen ID format. Please enter a number.</p>
<%
        } catch (Exception e) {
%>
            <p class="error">Error: <%= e.getMessage() %></p>
<%
        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (ps != null) try { ps.close(); } catch (Exception e) {}
            if (con != null) try { con.close(); } catch (Exception e) {}
        }
    }
%>
</body>
</html>

