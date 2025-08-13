package com.survey_tool.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

		

		@WebServlet("/AdminLoginServlet")
		public class Admin_Login_Servlet extends HttpServlet {
		    private static final long serialVersionUID = 1L;

		    protected void doPost(HttpServletRequest request, HttpServletResponse response)
		        throws ServletException, IOException {

		        String email = request.getParameter("email");
		        String password = request.getParameter("password");
		        
		        

		        // Hardcoded simple check (for test purpose only)
		        if (email.equals("admin@gmail.com") && password.equals("admin123")) {
		            response.sendRedirect("Admin_Dashboard.jsp");
		        } else {
		            response.sendRedirect("Error.jsp");
		        }
		    }
		}


	



