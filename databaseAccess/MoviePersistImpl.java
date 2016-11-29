package databaseAccess;


import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;


import databaseAccess.DbAccessImpl;

public class MoviePersistImpl {
	
	/*
	 * Gets the connection and runs the methods defined in DbAccessConfiguration.
	 */
	
	static DbAccessImpl access = new DbAccessImpl();
	
	
	public static Connection con(){
		Connection con = access.connect();
		return con;
		
	}
	
	public static int delete(String query) throws SQLException
	{
		return access.delete(con(), query);
	}
	
	public static int create(String query) throws SQLException
	{
		System.out.println(query);
		return access.create(con(), query);
	}

	public static ResultSet retrieve(String query) throws SQLException  {
		
		//System.out.println((access.retrieve(con(), query)).getString(1));
		return access.retrieve(con(), query);
		
	}
	
	
	
	
	
	
	
	
	

}
