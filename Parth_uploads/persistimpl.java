/*
 * Builds the Query
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
		String query = "SELECT name FROM clubs";
		ResultSet rset = db.retrieve(con, query);
		return logic.createFormCheckBox(rset);
	}
	
	/*Get user's clubs and create check-box form*/
	public String userClubList(String username){
		String query = "SELECT club FROM student_club s join user_info u on s.id_student=u.student_id where username='"+username.toLowerCase()+"'";
		ResultSet rset = db.retrieve(con, query);
		return logic.createFormCheckBox(rset);
    }
	
	/*Get user's events and create check-box form*/
	public String userEventList(String username){
		String query = "SELECT student_club.club, meetings.title, meetings.Month, meetings.date, meetings.year FROM student_club INNER JOIN `meetings` on student_club.id_club = meetings.club_id where username='"+username.toLowerCase()+"'";
		ResultSet rset = db.retrieve(con, query);
		return logic.createFormCheckBox(rset);
	}
}//class
