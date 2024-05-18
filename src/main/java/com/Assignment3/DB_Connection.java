package com.Assignment3;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {
	public static void main(String[] args) {
		DB_Connection obj1 = new DB_Connection();
		// Generate a random connection string if successful or else null
		System.out.println("Connection Successful:- " + obj1.get_connection());
	}
	
	// Creating a connection method so that we can call whenever want to establish connection
	public Connection get_connection() {
		Connection con = null;
		try {
			// Load Driver Class
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// Create Connection
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Shan1506");
		} catch (Exception e) {
			System.err.println(e);
		}
		return con;
	}
}
