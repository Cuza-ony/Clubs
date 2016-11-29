package loginLogicImpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import databaseAccess.MoviePersistImpl;

public class loginLogicImpl {
	
	;
	
	public ResultSet findUserName(String username) {
		ResultSet rst;
		ResultSet movie;
		
		try {
			rst = MoviePersistImpl.retrieve("Select * from user_info WHERE username LIKE '"+username+"'");
			
			return rst;
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	
	}
	
	public ResultSet findPassword(String password) {
		ResultSet rst;
		
		try {
			rst = MoviePersistImpl.retrieve("Select * from user_info WHERE password LIKE '"+password+"'");
			
			return rst;
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	
	}
	
	public int InsertUser(String firstname, String lastname, String year, String gender, String username, String password) {
	
		int success;
		ResultSet rst;
		try {
			success =  MoviePersistImpl.create("students(first_name, last_name, gender, year) values ('"+firstname+"', '"+lastname+"', '"+gender+"', '"+year+"');");
			rst = MoviePersistImpl.retrieve("Select * from students where first_name = '" + firstname+ "'AND last_name = '"+ lastname+ "';");
			int id = Integer.parseInt(rst.getString(1));
			success =  MoviePersistImpl.create("user_info(student_id, username, password) values ("+id+", '"+username+"', '"+password+"');");
			return success;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
		
		
	}
}
