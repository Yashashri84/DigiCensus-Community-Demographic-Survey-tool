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

/**
 * Servlet implementation class Enumerator_Change_Password_Servlet
 */
public class Citizen_Change_Password_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Citizen_Change_Password_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DbConnection.connect();
            HttpSession session = request.getSession();
            Integer c_id = (Integer) session.getAttribute("c_id");

            if (c_id == null) {
                response.sendRedirect("Citizen_Login.jsp");
                return;
            }

            String oldPassword = request.getParameter("oldPassword");
            String newPassword = request.getParameter("newPassword");

            String sqlCheck = "SELECT * FROM citizens WHERE c_id=? AND c_password=?";
            ps = con.prepareStatement(sqlCheck);
            ps.setInt(1,c_id);
            ps.setString(2, oldPassword);
            rs = ps.executeQuery();

            if (rs.next()) {
                rs.close();
                ps.close();

                String sqlUpdate = "UPDATE citizens SET enum_password=? WHERE enum_id=?";
                ps = con.prepareStatement(sqlUpdate);
                ps.setString(1, newPassword);
                ps.setInt(2, c_id);

                int i = ps.executeUpdate();

                if (i > 0)
                    response.sendRedirect("Citizen_Dashboard.jsp");
                else
                    response.sendRedirect("Error.jsp");

            } else {
                response.getWriter().println("<h3>Incorrect old password!</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Error.jsp");
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (con != null) con.close(); } catch (Exception e) {}
        }
    }
		

}