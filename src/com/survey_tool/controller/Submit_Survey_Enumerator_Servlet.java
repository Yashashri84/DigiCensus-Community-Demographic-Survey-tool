package com.survey_tool.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Submit_Survey_Enumerator_Servlet
 */
public class Submit_Survey_Enumerator_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Submit_Survey_Enumerator_Servlet() {
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

        try {
            con = DbConnection.connect();

            HttpSession session = request.getSession();
            Integer enum_id = (Integer) session.getAttribute("enum_id");

            if (enum_id == null) {
                response.sendRedirect("Enumerator_Login.jsp"); // redirect if not logged in
                return;
            }

            int c_id = Integer.parseInt(request.getParameter("c_id"));
            String householdSize = request.getParameter("householdSize");
            String incomeLevel = request.getParameter("incomeLevel");
            String educationLevel = request.getParameter("educationLevel");
            String survey_Date = request.getParameter("survey_Date");

            String sql = "INSERT INTO survey_data (enum_id, c_id, householdSize, incomeLevel, educationLevel, survey_Date) VALUES (?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);

            ps.setInt(1, enum_id);
            ps.setInt(2, c_id);
            ps.setString(3, householdSize);
            ps.setString(4, incomeLevel);
            ps.setString(5, educationLevel);
            ps.setString(6, survey_Date);

            int i = ps.executeUpdate();

            if (i > 0) {
                response.sendRedirect("Enumerator_Dashboard.jsp"); // success page
            } else {
                response.sendRedirect("Error.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Error.jsp");
        } finally {
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (con != null) con.close(); } catch (Exception e) {}
        }
    }
		
	

}
