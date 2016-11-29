package databaseAccess;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;


public class DbAccessImpl extends DbAccessConfiguration implements DbAccessInterface{

	
	

	@Override
	//sets up the connection for database
	public Connection connect(){
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			Class.forName(DB_DRIVE_NAME);
			con = DriverManager.getConnection(DB_CONNECTION_URL, DB_CONNECTION_USERNAME, DB_CONNECTION_PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	@Override
	//gets the information from datbase and places it into ResultSet
	public ResultSet retrieve(Connection con, String query) {
		ResultSet rset = null;
		try {
			Statement stmt = (Statement) con.createStatement();
			rset = stmt.executeQuery(query);
			if(rset.next() == false)
			{
				//System.out.println("broken");
				rset = null;
				return rset;
			}
			
			//System.out.println("id is = "+rset.getNString("id"));
			return rset;
		} catch (SQLException e) {
			e.printStackTrace();
			return rset;
		}
	}

	@Override
	//creates a new item into the database
	public int create(Connection con, String query) throws SQLException {
		
		Statement stmt = (Statement) con.createStatement();
		System.out.println(query);
		return stmt.executeUpdate("INSERT INTO " + query);
		
	}

	@Override
	//creates a new item into the database
	public int update(Connection con, String query) throws SQLException {
		
		Statement stmt = (Statement) con.createStatement();
		return stmt.executeUpdate("INSERT INTO " + query);
	}

	@Override
	//deletes the chosen query from the database. 
	public int delete(Connection con, String query) throws SQLException {
		
		Statement stmt = (Statement) con.createStatement();
		return stmt.executeUpdate("DELETE FROM " + query);
		
		 
	}

	@Override
	//disconnects sql server
	public void disconnect(Connection con) throws SQLException {
		// TODO Auto-generated method stub
		con.close();
		
	}
	public static void main(String args[])
	{
		Connection con = null;
		try 
		{
			con = DriverManager.getConnection("jdbc:mysql:///club", "root", "aiden");
			if (!con.isClosed())
				System.out.println("Successfully connected to MySQL server...");
		} 
		catch(Exception e) 
		{
			System.err.println("Exception: " + e.getMessage());
		} 
		finally 
		{
			try 
			{
				if (con != null)con.close();
			}
			catch(SQLException e) {}   
		}
	}
	
	
	
	
	

}
