package com.custLogValid;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	public static Connection connect() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.connector.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?name=root&password=Vamsi");
		return con;
	}
}
