/*
 * Builds the Query
 * 
 * I added my part to Cuza's original code. I only added three parts. 
 */
package persistlayer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logiclayer.LogicImpl;
import persistlayer.DbAccessImpl;

public class PersistImpl {
	//Class Instances
		DbAccessImpl db = new DbAccessImpl ();
		Connection con = db.connect();
		LogicImpl logic = new LogicImpl();
		
		
		//checks to see if the username and password combination is correct.
		//Also blocks the user from illegally going into user interface. 
		public Boolean findUserName(String username, String password ) {
			ResultSet rst;
			ResultSet movie;
			
			if(password.equals("' or '1=1")){
				System.out.println("no");
				return false;
			}
			
			String str ="Select * from user_info WHERE username = '"+username+"' AND password = '"+password+"';";
			System.out.println(str);
			rst = db.retrieve(con, str);
			
			if(rst==null)
			{
				return false;
			}
			else{
				System.out.println("there is a value");
				return true;
			}
		
		}
		
		//checks to see if the username is already used
		public Boolean checkUser(String username) {
			ResultSet rst;
			
			rst = db.retrieve(con, "Select * from user_info WHERE username = '"+username+"';");
			
			if(rst == null){
				return true;
			}
			
			return false;
			
		
		}
		
		//inserts the new user information and updates the database accordingly. 
		public int InsertUser(String firstname, String lastname, String year, String gender, String username, String password, String email) {
			int success;
			ResultSet rst;
			try {
				success =  db.create(con,"Insert into students(first_name, last_name, gender, year, email) values ('"+firstname+"', '"+lastname+"', '"+gender+"', '"+year+"', '"+email+"');");
				rst = db.retrieve(con,"Select * from students where first_name = '" + firstname+ "'AND last_name = '"+ lastname+ "';");
				int id = Integer.parseInt(rst.getString(1));
				success =  db.create(con,"Insert into user_info(student_id, username, password) values ("+id+", '"+username+"', '"+password+"');");
				return success;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
			//old database code
			
//			int success;
//			ResultSet rst;
//			try {
//				success =  db.create(con, "Insert INTO user_info(username, password) values ('" +username+ "', '"+password+"');");
//				rst = db.retrieve(con, "Select * from user_info where username = '" + username+ "';");
//				System.out.println("made it");
//				System.out.println(rst.getString(1));
//				int id = Integer.parseInt(rst.getString(1));
//				System.out.println("made it");
//				success =  db.create(con, "Insert INTO students(id, first_name, last_name, gender, year, email) values ('"+id+"', '"+firstname+"', '"+lastname+"', '"+gender+"', '"+year+"', '"+email+"');");
//				
//				
//				return success;
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//				return 0;
//			}
//			
//			
			
		}	
		
		
		/*
		 * START OF CUZA's Code
		 */
		
		
	/* Query Result = User Full Name */
	public String findUserFullName(String username){
		String query = "SELECT first_name,last_name FROM students s JOIN user_info u on u.student_id=s.id where u.username="+"'"+username.toLowerCase()+"'";
		ResultSet rset = db.retrieve(con, query); //execute query
		return logic.getFullName(rset);
	}
	
	/* Query Result = User's interests */
	public String findUserInterests(String username){
		String query = "SELECT interest FROM student_interest s join user_info u on s.id_student=u.student_id where username='"+username.toLowerCase()+"'";
		ResultSet rset = db.retrieve(con, query); //execute query
		return logic.getresults(rset);
	}
	
	/* Query Result = User's clubs */
	public String findUserClubs(String username){
		String query = "SELECT club FROM student_club s join user_info u on s.id_student=u.student_id where u.username="+"'"+username.toLowerCase()+"'";
		ResultSet rset = db.retrieve(con, query); //execute query
		return logic.getresults(rset);
	}
	
	/*Get all interests and create check-box form*/
	public String interestList(){
		String query = "SELECT tag FROM tags";
		ResultSet rset = db.retrieve(con, query);
		return logic.createFormCheckBox(rset);
	}
	
	/*Get user's intersts and create check-box form*/
	public String userInterestList(String username){
		String query = "SELECT interest FROM student_interest s join user_info u on s.id_student=u.student_id where username='"+username.toLowerCase()+"'";
		ResultSet rset = db.retrieve(con, query);
		return logic.createFormCheckBox(rset);
	}
    /*Get all clubs and create check-box form*/
	public String clubList(){
		String query = "SELECT tag FROM tags";
		ResultSet rset = db.retrieve(con, query);
		return logic.createFormCheckBox(rset);
	}
	
	/*Get user's clubs and create check-box form*/
	public String userClubList(String username){
		String query = "SELECT club FROM student_club s join user_info u on s.id_student=u.student_id where username='"+username.toLowerCase()+"'";
		ResultSet rset = db.retrieve(con, query);
		return logic.createFormCheckBox(rset);
	}
}//class