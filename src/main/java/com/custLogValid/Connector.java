package com.custLogValid;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector  {
	public static Connection connect() 
			throws ClassNotFoundException, SQLException {
		Connection con=null;
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank"
			+"?user=root&password=Vamsi");
		
		return con;
	}
}
