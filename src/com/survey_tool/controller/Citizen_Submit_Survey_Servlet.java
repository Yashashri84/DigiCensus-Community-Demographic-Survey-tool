package com.survey_tool.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Citizen_Submit_Survey_Servlet
 */
public class Citizen_Submit_Survey_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Citizen_Submit_Survey_Servlet() {
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
		PrintWriter out = response.getWriter();

        // Get session and citizenId
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("c_id") == null) {
            response.sendRedirect("Citizen_Login.jsp");
            return;
        }
        int c_id= (Integer) session.getAttribute("c_id");

        // Get form parameters
        int s_id=0;
        String householdSize = request.getParameter("householdSize");
        String incomeLevel = request.getParameter("incomeLevel");
        String educationLevel = request.getParameter("educationLevel");

        
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DbConnection.connect();
            String sql = "INSERT INTO survey_data (s_id,enum_id, c_id, householdSize, incomeLevel, educationLevel, survey_Date) VALUES (?,NULL, ?, ?, ?, ?, NOW())";
            ps = conn.prepareStatement(sql);
            
            
            ps.setNull(1, java.sql.Types.INTEGER); // enum_id is NULL for citizen
            ps.setInt(2, GetSet.getC_id());
            ps.setString(3, householdSize);
            ps.setString(4, incomeLevel);
            ps.setString(5, educationLevel);

            int result = ps.executeUpdate();
            if (result > 0) {
                out.println("<h3>Survey submitted successfully!</h3>");
            } else {
                out.println("<h3>Failed to submit survey.</h3>");
            }
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        } finally {
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (conn != null) conn.close(); } catch (Exception e) {}
        }
    }
		

}
