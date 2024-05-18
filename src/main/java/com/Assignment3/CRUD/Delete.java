package com.Assignment3.CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.Assignment3.DB_Connection;

public class Delete {
	public void delete_value(int sl_no){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		try {
			String querry="DELETE FROM Student WHERE sl_no=?";
			ps=connection.prepareStatement(querry);		
			ps.setInt(1, sl_no);;
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
