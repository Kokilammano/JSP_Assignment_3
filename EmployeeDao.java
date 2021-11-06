package com.app.empdao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.app.emp.Employee;

public class EmployeeDao {
	public static Connection getConnection() {
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/students";
		String user="root";
		String password="kokilam";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,password);
			
		} catch (Exception e1) {
			System.out.println(e1);
		}
		return con;
	}
	public static int saveEmployee(Employee c) {
		int status=0;
		String sql="insert into empdet(id,name,gender,role,location,havingpassport) values(?,?,?,?,?,?)";
		Connection con=getConnection();
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, c.getId());
			ps.setString(2, c.getName());
			ps.setString(3, c.getGender());
			ps.setString(4, c.getRole());
			ps.setString(5, c.getLoc());
			ps.setString(6, c.getOpt());
			status=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		return status;
	}

}
