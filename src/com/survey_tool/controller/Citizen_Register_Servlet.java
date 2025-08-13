package com.survey_tool.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Citizen_Register_Servlet
 */
public class Citizen_Register_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Citizen_Register_Servlet() {
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
Connection con = DbConnection.connect();
		
		int c_id = 0;
		String c_name = request.getParameter("c_name");
		String c_age = request.getParameter("c_age");
		String c_gender = request.getParameter("c_gender");
		String c_address = request.getParameter("c_address");
		String c_contact = request.getParameter("c_contact");
		String c_email = request.getParameter("c_email");
		String c_password = request.getParameter("c_password");
		
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement("insert into citizens value(?,?,?,?,?,?,?,?)");
			
			pstmt.setInt(1,c_id);
			pstmt.setString(2, c_name);
			pstmt.setString(3, c_age);
			pstmt.setString(4, c_gender);
			pstmt.setString(5, c_address);
			pstmt.setString(6, c_contact);
			pstmt.setString(7, c_email);
			pstmt.setString(8, c_password);
			
			
			int i = pstmt.executeUpdate();
			
			if(i>0){
				response.sendRedirect("Citizen_Dashboard.jsp");
				
			}
			else{
				response.sendRedirect("Error.jsp");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}



		
	


