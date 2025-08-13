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
 * Servlet implementation class Citizen_Login_Servlet
 */
public class Citizen_Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Citizen_Login_Servlet() {
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

		// TODO Auto-generated method stub
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String email = request.getParameter("c_email");
		    String password = request.getParameter("c_password");

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

		        String sql = "SELECT * FROM citizens WHERE c_email = ? AND c_password = ?";
		        pstmt = con.prepareStatement(sql);
		        pstmt.setString(1, email);
		        pstmt.setString(2, password);

		        rs = pstmt.executeQuery();

		        if (rs.next()) {
//	        	
//		        	int enum_id = rs.getInt("enum_id");  // Get user ID from result set
//	                GetSet.setEnum_id(enum_id);

//	                
//	                int c_id= rs.getInt("c_id");  
//                    GetSet.setC_id(c_id);
//	                
//		        	 // Create session and store enum_id
//	                HttpSession session = request.getSession();
//	                session.setAttribute("enum_id",enum_id);
//	                
//	                session.setAttribute("c_id",c_id);
	                
		            System.out.println("Login successful for: " + email);
		            response.sendRedirect("Citizen_Dashboard.jsp");
		        } else {
		            System.out.println("Login failed for: " + email);
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


}
