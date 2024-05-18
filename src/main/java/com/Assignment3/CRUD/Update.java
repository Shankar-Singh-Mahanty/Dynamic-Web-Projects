package com.Assignment3.CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.Assignment3.DB_Connection;
import com.Assignment3.Student_Bean;

public class Update {
	public Student_Bean get_value_of_student(int sl_no){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Student_Bean obj_Student_Bean=new Student_Bean();
		try {
			String querry="SELECT * FROM Student WHERE sl_no=?";
			ps=connection.prepareStatement(querry);		
			ps.setInt(1, sl_no);;
			rs=ps.executeQuery();
			while(rs.next()){
				obj_Student_Bean.setSl_no(rs.getInt("sl_no"));
				obj_Student_Bean.setName(rs.getString("name"));
				obj_Student_Bean.setRoll(rs.getInt("roll_no"));
				obj_Student_Bean.setBranch(rs.getString("branch"));
	         }
		} catch (Exception e) {
			System.out.println(e);
		}
		return obj_Student_Bean;
	}
	public void edit_student(Student_Bean obj_Student_Bean){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		try {
			String querry="UPDATE Student SET name=?,roll_no=?,branch=? where sl_no=?";
			ps=connection.prepareStatement(querry);		
			ps.setString(1, obj_Student_Bean.getName());;
			ps.setInt(2, obj_Student_Bean.getRoll());;
			ps.setString(3, obj_Student_Bean.getBranch());;
			ps.setInt(4, obj_Student_Bean.getSl_no());;
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
