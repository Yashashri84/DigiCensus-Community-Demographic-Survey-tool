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
 * Servlet implementation class Add_Enumerators_Servlet
 */
public class Add_Enumerators_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Enumerators_Servlet() {
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
		
		int enum_id = 0;
		String enum_name = request.getParameter("enum_name");
		String enum_zone = request.getParameter("enum_zone");
		String enum_contact = request.getParameter("enum_contact");
		String enum_email = request.getParameter("enum_email");
		String enum_password = request.getParameter("enum_password");
		
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement("insert into enumerators value(?,?,?,?,?,?)");
			
			pstmt.setInt(1,enum_id);
			pstmt.setString(2, enum_name);
			pstmt.setString(3, enum_zone);
			pstmt.setString(4, enum_contact);
			pstmt.setString(5, enum_email);
			pstmt.setString(6, enum_password);
			
			int i = pstmt.executeUpdate();
			
			if(i>0){
				response.sendRedirect("Admin_Dashboard.jsp");
				
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