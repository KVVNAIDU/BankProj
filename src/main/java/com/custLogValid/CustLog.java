package com.custLogValid;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/CustLogin")
public class CustLog extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("name");
		String pass = req.getParameter("pass");
		String query="select * from cust_table where AC_NO=? and PIN=?";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		PrintWriter pw = resp.getWriter();
		try {
			 con=Connector.connect();
			 ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, pass);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				pw.print("<h1>successful Login</h1>");
				pw.print("userName: "+rs.getString(2));
				
			}else {
				pw.print("<h2>error occured</h2>");
			}
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(ps!=null) {
					
					ps.close(); 
				}
				if(con!=null) {
					
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
}
