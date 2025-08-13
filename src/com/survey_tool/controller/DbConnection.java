package com.survey_tool.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	public static Connection connect(){
		Connection con = null;
		
		//first step
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Class loaded successfully");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/census_db","root","");
			System.out.println("Connection established");
		
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return con;
		
		
	}
}