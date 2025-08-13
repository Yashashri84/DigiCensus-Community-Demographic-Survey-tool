package com.survey_tool.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.survey_tool.controller.GetSet;

/**
 * Servlet implementation class Conduct_Surveys_Servlet
 */
public class Conduct_Surveys_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Conduct_Surveys_Servlet() {
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
		int s_id =0;
		int enum_id = GetSet.getEnum_id();
		int c_id = GetSet.getC_id() ;
		String householdSize = request.getParameter("householdSize");
		String incomeLevel = request.getParameter("incomeLevel");
		String educationLevel = request.getParameter("educationLevel");
		String survey_Date = request.getParameter("survey_Date");
		
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement("insert into survey_data values(?,?,?,?,?,?,?)");
			pstmt.setInt(1,s_id);
			pstmt.setInt(2, enum_id);
			pstmt.setInt(3, c_id);
			pstmt.setString(4, householdSize);
			pstmt.setString(5, incomeLevel);
			pstmt.setString(6, educationLevel);
			pstmt.setString(7, survey_Date);
			
			int i = pstmt.executeUpdate();
			if(i>0){
				response.sendRedirect("Enumerator_Dashboard.jsp");
			}
			else{
				response.sendRedirect("Error.jsp");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		doGet(request, response);
	}

}
