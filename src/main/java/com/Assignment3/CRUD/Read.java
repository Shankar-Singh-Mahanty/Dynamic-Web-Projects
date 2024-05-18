package com.Assignment3.CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.Assignment3.DB_Connection;
import com.Assignment3.Student_Bean;

public class Read {
	public static void main(String[] args) {
		Read obj_Read=new Read();
		obj_Read.get_values();
	}
	public List<Student_Bean> get_values(){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Student_Bean> list=new ArrayList<Student_Bean>();
		try {
			String querry="SELECT * FROM Student";
			ps=connection.prepareStatement(querry);		
			rs=ps.executeQuery();
			while(rs.next()){
				Student_Bean obj_Stud_Bean=new Student_Bean();
				System.out.println(rs.getInt("sl_no"));
				System.out.println(rs.getString("name"));
				System.out.println(rs.getInt("roll_no"));
				System.out.println(rs.getString("branch"));
				
				obj_Stud_Bean.setSl_no(rs.getInt("sl_no"));
				obj_Stud_Bean.setName(rs.getString("name"));
				obj_Stud_Bean.setRoll(rs.getInt("roll_no"));
				obj_Stud_Bean.setBranch(rs.getString("branch"));
				list.add(obj_Stud_Bean);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;	
	}
}
