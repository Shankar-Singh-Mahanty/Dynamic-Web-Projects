package com.Assignment3.CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.Assignment3.DB_Connection;

public class Create {
	public void insert_values(int sl_no, String name, int roll_no, String branch) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		try {
			String query="INSERT INTO Student(sl_no, name, roll_no, branch) VALUES(?,?,?,?)";
			ps=connection.prepareStatement(query);
			ps.setInt(1, sl_no);
			ps.setString(2, name);
			ps.setInt(3, roll_no);
			ps.setString(4, branch);
			ps.executeUpdate();
		} catch (Exception e) {
			System.err.println("Error inserting values: " + e.getMessage());
		    e.printStackTrace();
		}
	}
}
