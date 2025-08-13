package com.survey_tool.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Participate_Survey_Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Participate_Survey_Servlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Disable GET requests for this servlet
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection  con = DbConnection.connect();
        
          int enum_id = GetSet.getEnum_id();
//          int c_id = GetSet.getC_id();

//        int enum_id = 0; // or get actual enum_id
        int s_id = 0;
        int c_id = Integer.parseInt(request.getParameter("c_id"));
        String householdSize = request.getParameter("householdSize");
        String incomeLevel = request.getParameter("incomeLevel");
        String educationLevel = request.getParameter("educationLevel");
        String survey_Date = request.getParameter("survey_Date");

        PreparedStatement ps;
        try {
        	ps =  con.prepareStatement("INSERT INTO survey_data (s_id,enum_id, c_id, householdSize, incomeLevel, educationLevel, survey_Date) VALUES (?,?, ?, ?, ?, ?, ?)");
          
            ps.setInt(1,s_id);
            ps.setInt(2, enum_id);
            ps.setInt(3, c_id);
            ps.setString(4, householdSize);
            ps.setString(5, incomeLevel);
            ps.setString(6, educationLevel);
            ps.setString(7, survey_Date);

            
            int i = ps.executeUpdate();
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
    
   
