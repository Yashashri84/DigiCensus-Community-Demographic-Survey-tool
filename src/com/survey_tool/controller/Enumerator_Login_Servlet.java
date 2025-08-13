package com.survey_tool.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Enumerator_Login_Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Enumerator_Login_Servlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String enum_email = request.getParameter("enum_email");       // Note: use "email" as per your JSP input name
        String enum_password = request.getParameter("enum_password"); // Note: use "password" as per your JSP input name

        if (enum_email == null || enum_password == null || enum_email.trim().isEmpty() || enum_password.trim().isEmpty()) {
            response.sendRedirect("Error.jsp");
            return;
        }

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = DbConnection.connect();

            if (con == null) {
                System.out.println("Database connection failed.");
                response.sendRedirect("Error.jsp");
                return;
            }

            String sql = "SELECT * FROM enumerators WHERE enum_email = ? AND enum_password = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, enum_email);
            pstmt.setString(2, enum_password);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                int enum_id = rs.getInt("enum_id");  // Get user ID from result set
                GetSet.setEnum_id(enum_id);

                // Create session and store enum_id
                HttpSession session = request.getSession();
                session.setAttribute("enum_id", enum_id);

                System.out.println("Login successful for: " + enum_email);
                response.sendRedirect("Enumerator_Dashboard.jsp");
            } else {
                System.out.println("Login failed for: " + enum_email);
                response.sendRedirect("Error.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Error.jsp");
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (pstmt != null) pstmt.close(); } catch (Exception e) {}
            try { if (con != null) con.close(); } catch (Exception e) {}
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }
}
