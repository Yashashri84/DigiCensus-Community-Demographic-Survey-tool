package com.survey_tool.controller;



		import javax.servlet.ServletException;
		import javax.servlet.annotation.WebServlet;
		import javax.servlet.http.*;
		import java.io.IOException;

		@WebServlet("/DeleteEnumeratorServlet")
		public class Delete_Enumerators_Servlet extends HttpServlet {
		    private static final long serialVersionUID = 1L;

		   

		    @Override
		    public void init() throws ServletException {
		      
		    }

		    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    	String idStr = request.getParameter("enum_id");

		    }
		   
		}